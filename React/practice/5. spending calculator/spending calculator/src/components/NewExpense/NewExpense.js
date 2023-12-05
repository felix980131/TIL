import { useState } from "react";
import "./NewExpense.css";
import ExpenseForm from "./ExpenseForm";

function NewExpense({ onAddExpense }) {
  const [isEditing, setIsEditing] = useState(false);

  const saveExpenseDateHandler = (enteredExpenseData) => {
    const expenseData = { ...enteredExpenseData, id: Math.random().toString() };
    console.log(expenseData);
  };

  const startEditingHandler = () => {
    setIsEditing(true);
  };

  const stopEditingHandler = () => {
    setIsEditing(false);
  };

  return (
    <div className="new-expense">
      {!isEditing && (
        <button onClick={startEditingHandler}>Add New Expense</button>
      )}

      {isEditing && (
        <ExpenseForm
          onSaveExpenseData={onAddExpense}
          onCancel={stopEditingHandler}
        />
      )}
    </div>
  );
}

export default NewExpense;
