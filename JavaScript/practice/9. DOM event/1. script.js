const btn2 = document.querySelector("#buttonV2");

btn2.onclick = function () {
  console.log("You Click Me");
  console.log("Hello World");
};

btn2.onmouseenter = function () {
  console.log("Mouse Enter");
};

document.querySelector("h1").onclick = function () {
  console.log("This is H1");
};

const btn3 = document.querySelector("#buttonV3");

btn3.addEventListener("click", function () {
  console.log("You Click Me(addEventListener)");
  console.log("Hello World(addEventListener)");
});

function fun1() {
  console.log("I am fun1");
}

function fun2() {
  console.log("I am fun2");
}

const testBtn = document.querySelector("#testing");

testBtn.onclick = fun1;
testBtn.onclick = fun2;

testBtn.addEventListener("click", fun1, { once: true });
testBtn.addEventListener("click", fun2);
