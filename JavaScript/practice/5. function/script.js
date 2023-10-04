// 인수가 없는 함수
function singSong() {
  console.log("do");
  console.log("re");
  console.log("mi");
}

singSong();

// 인수가 있는 함수
function hello(name) {
  console.log(`Hello, ${name}`);
}

hello("Felix");
hello("man");

// 함수 범위
// function fun1() {
//   let eggs = 6;
// }

// console.log(eggs); // error. eggs가 함수 내에서 정의된 변수이므로 함수 밖에서는 사용 불가

// let a = "hello";

// function fun2() {
//   let a = "world";
//   console.log(a); // "world"
// }

// console.log(a); // "hello"

// 블록 범위
// let radius = 8;

// if (radius > 0) {
//   const PI = 3.14;
//   let msg = "HI";
// }

// console.log(radius);
// console.log(PI); // error. PI는 if문 안에 선언된 변수 if문 밖에서 사용 불가

// 렉시컬 범위
function outer() {
  let a = "Hello World";
  function inner() {
    let b = a;
    console.log(b);
  }
  inner();
}

outer();

// 함수 표현식
let square = function (num) {
  return num * num;
};

// function square(num) {
//   return num * num;
// }

square(7);

// 고차함수
function callTwice(call) {
  call();
  call();
}
function call() {
  console.log("hello, I am call");
}

callTwice(call);

// 반환함수
function sum(num) {
  return function (val) {
    return val + num;
  };
}

const sumNumber = sum(10);

console.log(sumNumber(5));
console.log(sumNumber(10));

// 메서드 정의하기
const math = {
  sum: function (x, y) {
    return x + y;
  },
  mul: function (x, y) {
    return x * y;
  },
  div: function (x, y) {
    return x / y;
  },
};

console.log(math.sum(10, 2));

// this 키워드
const person = {
  name: "felix",
  age: 26,
  greet: function () {
    return `Hello, I am ${this.name}, I am ${this.age}`;
  },
};

console.log(person.greet());
