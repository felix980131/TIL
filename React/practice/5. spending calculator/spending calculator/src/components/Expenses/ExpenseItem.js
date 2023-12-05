import React, { useState } from "react";

import "./ExpenseItem.css";
import ExpenseDate from "./ExpenseDate";
import Card from "../UI/Card";

function ExpenseItem({ title, date, amount }) {
  const [titleState, setTitleState] = useState(title);

  const clickHandler = () => {
    setTitleState("updated!");
  };

  return (
    <li>
      <Card className="expense-item">
        <ExpenseDate date={date}></ExpenseDate>
        <div className="expense-item__description">
          <h2>{titleState}</h2>
          <div className="expense-item__price">${amount}</div>
        </div>
        <button onClick={clickHandler}>Change Title</button>
      </Card>
    </li>
  );
}

export default ExpenseItem;
