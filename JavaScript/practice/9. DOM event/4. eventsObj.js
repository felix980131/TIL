document.querySelector("button").addEventListener("click", function (event) {
  console.log(event);
});

// const input = document.querySelector("input");
// input.addEventListener("keydown", function (event) {
//   console.log(event.code);
//   console.log(event.key);
// });

// input.addEventListener("keyup", function (event) {
//   console.log("Keyup");
// });

window.addEventListener("keydown", function (event) {
  switch (event.code) {
    case "ArrowUp":
      console.log("UP");
      break;
    case "ArrowDown":
      console.log("Down");
      break;
  }
});
