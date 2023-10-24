import "./DoubleDice.css";

function DoubleDice() {
  const num1 = Math.floor(Math.random() * 3) + 1;
  const num2 = Math.floor(Math.random() * 3) + 1;
  const isWinner = num1 === num2;
  const styles = { color: isWinner ? "green" : "red" };

  return (
    <div className="DoubleDice" style={styles}>
      <h1>Double Dice</h1>
      {num1 === num2 && <h2>You Win!</h2>}
      <p>Num1 : {num1}</p>
      <p>Num2 : {num2}</p>
    </div>
  );
}

export default DoubleDice;
