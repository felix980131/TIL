let input = prompt("what would you like to do?");
let todos = [];

while (input !== "quit") {
  if (input === "new") {
    let newTodo = prompt("what would you add to do?");
    todos.push(newTodo);
  } else if (input === "list") {
    console.log("=============");
    for (let i = 0; i < todos.length; i++) {
      console.log(`${i} - ${todos[i]}`);
    }
    console.log("=============");
  } else if (input === "delete") {
    let deleteTarget = prompt("what would you remove to do?");
    let index = todos.indexOf(deleteTarget);

    while (index < 0) {
      deleteTarget = prompt("what would you remove to do?");
      index = todos.indexOf(deleteTarget);
    }
    todos.splice(index, 1);
  }

  input = prompt("what would you like to do?");
}

console.log("quit");
