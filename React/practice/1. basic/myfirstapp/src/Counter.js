import { useState } from "react";

function Counter() {
  const [num, setNum] = useState(0);

  const incrementNum = () => {
    setNum(num + 1);
  };

  return (
    <div>
      <p>The Count is: {num}</p>
      <button onClick={incrementNum}>Increment</button>
    </div>
  );
}

export default Counter;
