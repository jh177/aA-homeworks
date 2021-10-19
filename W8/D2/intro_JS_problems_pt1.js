const madLib = (verb, adjective, noun) => {
  console.log(`We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`);
};

// madLib('make', 'best', 'guac');

const isSubstring = (searchString, subString) => {
  return searchString.includes(subString);
};

// console.log(isSubstring("time to program", "time"))
// console.log(isSubstring("Jump for joy", "joys"))


const fizzBuzz = (array) => {
  let result = [];
  for (let i=0; i<array.length; i++) {
    if ((i % 3 === 0 && i % 5 !== 0) || (i % 5 === 0 && i % 3 !== 0)) {
      continue;
    }
    result.push(array[i]);
  }
  console.log(result)
};

// arr = [3,5,10,15,18]
// fizzBuzz(arr)

const isPrime = (num) => {
  if (num < 2) {
    return false;
  }
  for (let i=2; i<num; i++) {
    if (num % i === 0) {
      return false;
    }
  }
  return true;
}

// console.log(isPrime(2))
// console.log(isPrime(10))
// console.log(isPrime(15485863))
// console.log(isPrime(3548563))

const sumOfNPrimes = (n) => {
  let count = 0;
  let sum = 0
  for (let i = 0; count < n; i++) {
    if (isPrime(i)) {
      count += 1;
      sum += i;
    }
  }
  console.log(sum)
}

sumOfNPrimes(0)
sumOfNPrimes(1)
sumOfNPrimes(4)