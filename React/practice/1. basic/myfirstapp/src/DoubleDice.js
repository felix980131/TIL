function DoubleDice() {
  const num1 = Math.floor(Math.random() * 3) + 1;
  const num2 = Math.floor(Math.random() * 3) + 1;

  return (
    <>
      <h1>Double Dice</h1>
      {num1 === num2 && <h2>You Win!</h2>}
      <p>Num1 : {num1}</p>
      <p>Num2 : {num2}</p>
    </>
  );
}

export default DoubleDice;
