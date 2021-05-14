
function createCount() {
  let count = 0;

  function increment() {
    count++;
    return count;
  }

  return increment;
}

const countA = createCount();
const countB = createCount();


countA();
console.log(countA());

countB();
countB();
console.log(countB());

createCount();
createCount();
createCount();
console.log(createCount());
// global_count = 0;
// function createGlobalCount() {
//   global_count++;
// }
//
// // const globalCount = createGlobalCount();
// // globalCount();
// // globalCount();
// createGlobalCount();
// createGlobalCount();
// createGlobalCount();
// console.log(global_count);
