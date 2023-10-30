import { useState } from "react";

function initialState() {
  console.log("Making new game board");
  return Array(5000);
}

function Dumbo() {
  const [board, setBoard] = useState(initialState);

  return (
    <>
      <button onClick={() => setBoard(initialState)}>
        Click me to change state
      </button>
    </>
  );
}

export default Dumbo;
