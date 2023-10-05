// 기본 매개변수
function oldFun(a, b) {
  b = typeof b !== "undefined" ? b : 1;

  return a * b;
}

function newFun(a, b = 1) {
  return a * b;
}

console.log(oldFun(10));

// spread
console.log([1, 2, 3]);
console.log(...[1, 2, 3]);

const nums = [1, 2, 3, 4];

console.log(Math.max(nums));

console.log(Math.max(...nums));

const nums1 = [1, 2, 3];
const nums2 = [4, 5, 6];

console.log([...nums1, ...nums2]);
console.log(["a", "b", ...nums1]);
console.log([...nums1, ...nums2, 7, 8, 9]);

const obj1 = { name: "felix", age: 25 };
const obj2 = { major: "cs", nation: "korea" };

console.log({ ...obj1, ...obj2 });
console.log({ ...obj1, ...obj2, new: "new" });

// 인수 객체
function sumAll() {
  let total = 0;
  for (let i in arguments) {
    total += arguments[i];
  }
  return total;
}

console.log(sumAll(1, 2, 3));
console.log(sumAll(10, 20));

function sumAll2(...nums) {
  let total = 0;
  for (let i of nums) {
    total += i;
  }
  return total;
}

console.log(sumAll2(1, 2, 3));
console.log(sumAll2(10, 20));

// 분해
const people = ["felix", "sora", "kai"];

const [a, b, c] = people;

console.log(a);
console.log(b);
console.log(c);

const [d, ...e] = people;

console.log(d);
console.log(e);

const me = { name: "felix", age: 25, major: "cs", nation: "korea" };

// const { name, major, age } = me;
const { name, major, newThing = "newThing" } = me;

// console.log(name);
// console.log(major);
// console.log(age);

function introduce({ name, age }) {
  return `I am ${name}, I am ${age}`;
}

console.log(introduce(me)); //
