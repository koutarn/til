function sum(numbers){
  return numbers.reduce((total,num)=>{
    return total += num;
  },0);
}

const array = [1,2,3,4,5,6,100];
console.log(sum(array));
