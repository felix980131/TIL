import "./App.css";

function Hello() {
  return <h1>Hello World</h1>;
}

function Dog() {
  return <h2>I am Dog</h2>;
}

function App() {
  return (
    <div className="App">
      <Hello />
      <Hello />
      <Hello />
      <Dog />
      <Hello />
      <Hello />
    </div>
  );
}

export default App;
