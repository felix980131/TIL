import { useState } from "react";

function TogglerCounter() {
  const [isHappy, setIsHappy] = useState(true);
  const [count, setCount] = useState(0);

  const toggleIsHappy = () => {
    setIsHappy(!isHappy);
  };
  const incrementCount = () => {
    setCount(count + 1);
  };

  return (
    <>
      <p onClick={toggleIsHappy}>{isHappy ? ":)" : ":("}</p>
      <p>{count}</p>
      <button onClick={incrementCount}>+</button>
    </>
  );
}
export default TogglerCounter;
