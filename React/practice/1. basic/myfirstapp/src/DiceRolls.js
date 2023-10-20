import Die from "./Die";
import "./DieRoll.css";

function DiceRolls() {
  return (
    <div className="DieRoll">
      <h1>Dice Roll</h1>
      <Die />
      <Die />
      <Die />
    </div>
  );
}

export default DiceRolls;
