function handleClick() {
  console.log("Click the Button");
}

function Clicker() {
  return (
    <div>
      <p>Click the Button</p>
      <button onClick={handleClick}>Click</button>
    </div>
  );
}

export default Clicker;
