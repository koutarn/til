const array = [1,3,5,7,10];

//一つでも条件にあえばtrue
const isEven = array.some(num=>{
  if (num % 2 === 0) {
    return true;
  }
  return false;
});

console.log(isEven);
