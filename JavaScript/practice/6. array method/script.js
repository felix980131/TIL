const numArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

numArray.forEach(function (n) {
  console.log(n * n);
});

const newNumArray = numArray.map(function (n) {
  return n + 10;
});

console.log(newNumArray);

// arrow function
const sum = (num1, num2) => {
  return num1 + num2;
};

// const sum = function (num1, num2) {
//   return num1 + num2;
// };

console.log(sum(1, 2));

// arrow function 축약
const fun = (num) => num + 10;

console.log(fun(1));

// setTimeout
console.log("Hello");

setTimeout(() => {
  console.log("setTimeout");
}, 2000);

console.log("Good Bye");

// setInterval
setInterval(() => {
  console.log("Hello");
}, 2000);

let id = setInterval(() => {
  console.log("Hello");
}, 2000);

clearInterval(id);

const numArray2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const newNumArray2 = numArray.filter(function (n) {
  return n < 5;
});

console.log(newNumArray2);

const numArray3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

let lessThan20 = numArray3.every(function (num) {
  return num < 20;
});

let lessThan5 = numArray.some(function (num) {
  return num < 5;
});

console.log(lessThan20);

console.log(lessThan5);

let reduceTest = [1, 2, 3, 4, 5].reduce(function (accumlator, currentValue) {
  return accumlator + currentValue;
});

console.log(reduceTest);

let reduceTest2 = [1, 2, 3, 4, 5].reduce((sum, num) => sum + num, 10);

console.log(reduceTest2);
