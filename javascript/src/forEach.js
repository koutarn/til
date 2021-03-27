const array = [2,4,6];
array.forEach(value=>console.log(value));

function sum(numbers){
  let total = 0;
  numbers.forEach(num => total+=num);
  return total;
}
console.log(sum(array));
