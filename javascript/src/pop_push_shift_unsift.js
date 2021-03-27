const array = ["Java","Javascript","Ruby"];

console.log('initial');
console.log(array);

console.log('push');
array.push("Go");
console.log(array);

console.log('pop');
const popItem = array.pop();
console.log(popItem);
console.log(array);

console.log('unsift');
array.unshift("C");
console.log(array);

console.log('sift');
const shiftItem = array.shift();
console.log(shiftItem);
console.log(array);
