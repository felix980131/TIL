// FetchAPI
fetch("https://jsonplaceholder.typicode.com/todos/1")
  .then((res) => {
    console.log("success_Fetch");
    return res.json();
  })
  .then((data) => {
    console.log(data);
  })
  .catch((res) => {
    console.log("error_Fetch");
    console.log(this);
  });

// 여러 api 호출
fetch("https://jsonplaceholder.typicode.com/todos/1")
  .then((res) => {
    console.log("success_Fetch");
    return res.json();
  })
  .then((data) => {
    console.log(data);

    return fetch("https://jsonplaceholder.typicode.com/todos/2");
  })
  .then((res) => {
    console.log("success2_Fetch");
    return res.json();
  })
  .then((data) => {
    console.log(data);
  })
  .catch((res) => {
    console.log("error_Fetch");
    console.log(this);
  });
