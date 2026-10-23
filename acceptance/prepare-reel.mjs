import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',maxBuffer:24*1024*1024});
const q=(...args)=>JSON.parse(run('query',...args,'--format','json')).data;
assert.equal(run('-v').trim(),'0.30.1');
run('docs','agents','--full');
function canonical(v){
  if(Array.isArray(v))return v.map(canonical);
  if(v&&typeof v==='object')return Object.fromEntries(Object.entries(v).map(([k,x])=>[k,
    k==='__edn_set'?x.map(canonical).sort((a,b)=>JSON.stringify(a).localeCompare(JSON.stringify(b))):canonical(x)]));
  return v;
}
const config=q('config');
const inventory=()=>{
  const all=[],namespaces=q('ns').namespaces;assert.equal(namespaces.length,23);
  for(const ns of namespaces){
    const names=run('query','defs',ns).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(names.length,q('ns',ns).definition_count);
    for(const name of names)all.push(q('def',`${ns}/${name}`));
  }
  assert.equal(all.length,156);assert.equal(all.reduce((n,d)=>n+d.tests.length,0),63);
  assert.equal(all.reduce((n,d)=>n+d.examples.length,0),0);return canonical(all);
};
const before=inventory();assert.deepEqual(before,canonical(JSON.parse(readFileSync('acceptance/reviewed.json','utf8'))));
const list=q('type',"'List");
assert.equal(list.methods.find(m=>m.name==='.foldl').definition,'calcit.core/foldl');
assert.equal(list.methods.find(m=>m.name==='.concat').definition,'calcit.core/&list:concat');
assert.equal(q('type','calcit.core/Result').methods.find(m=>m.name==='.err?').definition,'calcit.core/result:err?');
const expected=structuredClone(before),counts={result:0,constructors:0,foldl:0,concat:0,host:0};
const constructorTypes=new Set();
function normalize(n){
  if(!Array.isArray(n))return n;
  const a=n.map(normalize);
  if(a[0]==='result:err?'){assert.equal(a.length,2);counts.result++;return ['.err?',a[1]];}
  if(a[0]==='%{}'){
    assert.ok(['schema/ClientUser','PartitionProgress','PartitionSlot','DiffBudget'].includes(a[1]));
    assert.ok(a.slice(2).every(p=>p.length===2&&p[0].startsWith(':')));
    constructorTypes.add(a[1]);counts.constructors++;return [a[1],...a.slice(2).flat()];
  }
  if(a[0]==='foldl'){assert.equal(a.length,4);a[0]='.foldl';counts.foldl++;}
  if(a[0]==='concat'){assert.deepEqual(a,['concat','drops','sends']);a[0]='.concat';counts.concat++;}
  if(a[0]==='unsafe-coerce'){
    assert.ok(['LocalDateHost','NodeProcessHost',"'ws-edn.server/NodeWebSocketServerHost","'ws-edn.server/NodeWebSocketHost"].includes(a[2]));
    counts.host++;return ['js-cast',a[1],a[2].startsWith("'")?a[2]:"'"+a[2]];
  }
  return a;
}
for(const d of expected){d.code=normalize(d.code);d.tests=d.tests.map(t=>({...t,code:normalize(t.code)}));}
assert.deepEqual(counts,{result:7,constructors:12,foldl:7,concat:1,host:4});
// The existing checked Map<String,Dynamic> supplies String keys; spell out
// the actual reducer relation rather than assert/coerce a Dynamic key.
const messages=expected.find(d=>d.id==='cumulo-reel.app.protocol/decode-messages');
const fold=messages.code[3][3][1];
assert.equal(fold[0],'.foldl');
assert.deepEqual(fold[1],['&set:to-list',['&map:keys','entries']]);
fold[1]=['.to-list',['.keys','entries']];
const reducer=fold[3];assert.deepEqual(reducer.slice(0,2),['fn',['acc','key']]);
const decoded=['::',"'Result",['::',"'Map","'String","'cumulo-reel.schema/Message"],"'String"];
reducer.splice(2,0,['hint-fn',['{}',[':args',['[]',decoded,"'String"]],[':return',decoded]]]);
const ops=[];
for(let i=0;i<before.length;i++){
  const a=before[i],b=expected[i];
  if(JSON.stringify(a.code)!==JSON.stringify(b.code))ops.push(['edit','def',b.id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(b.code)]);
  for(let t=0;t<a.tests.length;t++)if(JSON.stringify(a.tests[t])!==JSON.stringify(b.tests[t]))
    ops.push(['edit','add-test',b.id,b.tests[t].name,'--overwrite','--tags',b.tests[t].tags.join(','),'--input-format','json-ast','--code',JSON.stringify(b.tests[t].code)]);
}
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));
writeFileSync('acceptance/operations.json',JSON.stringify(ops,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
assert.deepEqual(inventory(),expected,'All156views retain schemas/docs/FFI/config and all original63test assertions/tags except reviewed call forms');
assert.deepEqual(q('config'),config);
writeFileSync('acceptance/after.json',JSON.stringify(expected,null,2));
writeFileSync('acceptance/preserved.json',JSON.stringify({definitions:156,namespaces:23,tests:63,examples:0,...counts,constructorTypes:[...constructorTypes],publicMapKeyProjection:1,publicSetToList:1,explicitReducerContract:1,unsafeBefore:4,unsafeAfter:0},null,2));
writeFileSync('acceptance/snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));
