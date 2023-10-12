// Axios
axios
  .get("https://jsonplaceholder.typicode.com/todos/1")
  .then((res) => {
    console.log("success_Fetch");
    console.log(res.data);
  })
  .catch((res) => {
    console.log("error_Fetch");
    console.log(this);
  });
