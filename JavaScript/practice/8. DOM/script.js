let lorem = document.getElementById("lorem1");
console.log(lorem);

let p = document.getElementsByTagName("p");
console.log(p);

let testing = document.getElementsByClassName("testing");
console.log(testing);

let testingQuery = document.querySelector(".testing");
console.log(testingQuery);

let testingQueryAll = document.querySelectorAll(".testing");
console.log(testingQueryAll);

console.log(document.querySelector("#lorem1").innerText);
console.log(document.querySelector("#lorem1").textContent);
console.log(document.querySelector("#lorem1").innerHTML);
// document.querySelector("#lorem1").innerText = "<h1>text1</h1>";
// document.querySelector("#lorem1").textContent = "<h1>text1</h1>";
// document.querySelector("#lorem1").innerHTML = "<h1>text1</h1>";

let link = document.querySelector("a");

let before = link.getAttribute("href");
console.log(before);

link.setAttribute("href", "https://www.naver.com");

let after = link.getAttribute("href");
console.log(after);

// let h1 = document.querySelector("h1");
// h1.style.color = "green";
// h1.style.fontSize = "3em";

let link2 = document.querySelector("a");
console.log(window.getComputedStyle(link).color);

let link3 = document.querySelector("a");
link.setAttribute("class", "purple");

let first = document.querySelector("b");
let paragraph = first.parentElement;
console.log(paragraph.childElementCount);
console.log(paragraph.children);

let second = document.querySelector(".testing2");
console.log(second.previousSibling);
console.log(second.previousElementSibling);
console.log(second.nextSibling);
console.log(second.nextElementSibling);

let newImg = document.createElement("img");
newImg.src =
  "https://upload.wikimedia.org/wikipedia/commons/b/bf/Bucephala-albeola-010.jpg";
document.body.appendChild(newImg);

let text = document.querySelector("b");
text.append("[new Text after1]", "[new Text after2]");
text.prepend("[new Text before]");

let h2 = document.createElement("h2");
h2.innerText = "I am H2";

let h1 = document.querySelector("h1");
h1.insertAdjacentElement("afterend", h2); // h1 앞에 h2를 추가

let h3 = document.createElement("h3");
h3.innerText = "I am H3";
h1.after(h3); // h1 뒤에 h3를 삽입

let firstLi = document.querySelector("li");
let ul = firstLi.parentElement;
ul.removeChild(firstLi);

ul.remove();
