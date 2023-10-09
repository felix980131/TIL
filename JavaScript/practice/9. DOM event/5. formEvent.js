const form = document.querySelector("#shelterForm");
const input = document.querySelector("#catName");
const list = document.querySelector("#cats");

form.addEventListener("submit", function (event) {
  event.preventDefault();

  const catName = input.value;
  const newItem = document.createElement("li");
  newItem.innerText = catName;

  list.append(newItem);

  input.value = "";
});

const input2 = document.querySelector("#input");

input2.addEventListener("change", function (event) {
  console.log("change");
});

input2.addEventListener("input", function (event) {
  console.log("input");
});
