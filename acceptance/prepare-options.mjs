import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',stdio:['ignore','pipe','pipe'],maxBuffer:8*1024*1024});
const query=(...args)=>JSON.parse(run('query',...args,'--format','json')).data;
const id='cumulo-reel.partition/apply-partition-deltas';
const styleId='cumulo-reel.app.comp.container/style-body';
const original=query('def',id);
const style=query('def',styleId);
assert.deepEqual(style.code,['def','style-body',['{}',[':padding','|8px 16px']]]);
assert.deepEqual(style.schema,['::',"'Map","'Tag","'Dynamic"]);
assert.equal(original.tests.length,2);
assert.equal(original.tests[1].name,'late-failure-and-final-only-decode');
assert.deepEqual(original.tests[1].tags,['partition']);
let replaced=0;
const normalize=node=>{
  if(!Array.isArray(node))return node;
  const result=node.map(normalize);
  if(result[0]==='option:unwrap'){result[0]='.unwrap';replaced++;}
  return result;
};
const testCode=normalize(original.tests[1].code);
assert.equal(replaced,2);
const operations=[
  ['edit','add-test',id,original.tests[1].name,'--overwrite','--tags','partition','--input-format','json-ast','--code',JSON.stringify(testCode)],
  ['edit','schema',styleId,'--input-format','json-ast','--code',JSON.stringify(['::',"'Map","'Tag","'String"])],
];
writeFileSync('acceptance/operations.json',JSON.stringify(operations,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
const after=query('def',id);
const expected=structuredClone(original);
expected.tests[1].code=testCode;
assert.deepEqual(after,expected,'preserve function, schema, test names/tags/order and every normalized assertion');
const styleAfter=query('def',styleId);
assert.deepEqual(styleAfter,{...style,schema:['::',"'Map","'Tag","'String"]});
writeFileSync('acceptance/program-diff.json',run('analyze','program-diff','HEAD','--format','json'));
writeFileSync('acceptance/partition-after.json',JSON.stringify(after,null,2));
writeFileSync('acceptance/preserved.json',JSON.stringify({replaced,originalTestCount:original.tests.length,functionAndSchemaUnchanged:true,testMetadataAndNormalizedAssertionsUnchanged:true,styleBodyUnchanged:true}));
