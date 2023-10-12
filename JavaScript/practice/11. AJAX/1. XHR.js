// XHR
const req = new XMLHttpRequest();

// 오류가 없는 경우 실행
req.onload = function () {
  console.log("success_XHR");

  const data = JSON.parse(this.responseText);
  console.log(data);
};

// 오류가 발생할 경우 실행
req.onerror = function () {
  console.log("error_XHR");
  console.log(this);
};

req.open("GET", "https://jsonplaceholder.typicode.com/todos/1");
req.send();
