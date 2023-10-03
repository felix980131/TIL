// For Loop
for (i = 0; i < 10; i++) {
  console.log(`${i} Hello World`);
}

// Array Loop
let list = [1, 2, 3];

for (let i = 0; i < list.length; i++) {
  console.log(list[i]);
}

for (let i of list) {
  console.log(i);
}

// Object Loop
let obj = { key1: "val1", key2: "val2" };

for (let key in obj) {
  console.log(key);
  console.log(obj[key]);
}

// While Loop

let num = 0;

while (num < 10) {
  console.log(num);
  num++;
}
