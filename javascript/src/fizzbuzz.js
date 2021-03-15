const FizzBuzz = num =>{
  let ret = "";
  const fizz = "Fizz";
  const buzz = "Buzz";

  if (num % 3 === 0){ret = ret + fizz;}
  if (num % 5 === 0 ){ret = ret + buzz;}
  return ret || num;
}

console.log(FizzBuzz(4));
console.log(FizzBuzz(3));
console.log(FizzBuzz(5));
console.log(FizzBuzz(10));
console.log(FizzBuzz(15));

const FizzBuzzShort = num => {
  return (num % 3 == 0 ? "Fizz":"") + (num % 5 === 0 ? "Buzz":"") || num;
}

console.log(FizzBuzzShort(5));
