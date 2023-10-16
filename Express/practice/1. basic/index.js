const express = require("express");

const app = express();

// app.use((req, res) => {
//   console.log("We got a new request");
//   //   res.send("Hello, We got your request!");
//   //   res.send({ color: "red" });
//   res.send("<h1>This is My Web Page</h1>");
// });

app.get("/r/:something", (req, res) => {
  console.log(req.params); // 매개변수 확인
  const { something } = req.params;
  res.send(`This is a ${something}`);
});

app.get("/r/:something/:id", (req, res) => {
  console.log(req.params); // 매개변수 확인
  const { something, id } = req.params;
  res.send(`This is a ${something} and ${id}`);
});

app.get("/search", (req, res) => {
  console.log(req.query);
  const { q1, q2 } = req.query;

  res.send(`Hi ${q1} and ${q2}`);
});

app.get("/", (req, res) => {
  console.log("Root request");
  res.send("This is root!");
});

app.get("/cats", (req, res) => {
  console.log("Cats GET request");
  res.send("Meow!");
});

app.post("/cats", (req, res) => {
  console.log("Cats POST request");
  res.send("Meow!");
});

app.get("/dogs", (req, res) => {
  console.log("Dogs request");
  res.send("Bark!");
});

app.get("*", (req, res) => {
  res.send("I don't know that path!");
});

app.listen(8080, () => {
  console.log("LISTENING ON PORT 8080");
});
