import "./App.css";
import Die from "./Die";

function App() {
  return (
    <div className="App Die">
      <Die numSize={20} />
      <Die numSize={15} />
      <Die />
    </div>
  );
}

export default App;
