import "./App.css";
import ListPicker from "./ListPicker";

function App() {
  return (
    <div className="App Die">
      <ListPicker values={[1, 2, 3]} />
      <ListPicker values={["a", "b", "c", "d"]} />
    </div>
  );
}

export default App;
