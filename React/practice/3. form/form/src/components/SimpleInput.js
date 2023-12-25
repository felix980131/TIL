import { useState, useRef } from "react";

const SimpleInput = (props) => {
  const nameInputRef = useRef();
  const [enteredName, setEnterName] = useState("");
  const [enteredNameIsValid, setEnteredNameIsValid] = useState(true);

  const nameInputChangeHanlder = (event) => {
    setEnterName(event.target.value);
  };

  const formSubmissionHandler = (evnet) => {
    evnet.preventDefault();

    if (enteredName === "") {
      setEnteredNameIsValid(false);
      return;
    }
    setEnteredNameIsValid(true);

    console.log(enteredName);
    const enteredValue = nameInputRef.current.value;
    console.log(enteredValue);

    // 바닐라 자바스크립트 코드로 DOM을 조작하는 것은 지양해야 한다.
    // nameInputRef.current.value = "";

    setEnterName("");
  };

  const nameInputClasses = enteredNameIsValid
    ? "form-control"
    : "form-control invalid";

  return (
    <form onSubmit={formSubmissionHandler}>
      <div className={nameInputClasses}>
        <label htmlFor="name">Your Name</label>
        <input
          ref={nameInputRef}
          type="text"
          id="name"
          onChange={nameInputChangeHanlder}
          value={enteredName}
        />
        {!enteredNameIsValid && (
          <p className="error-text">Name must not be empty.</p>
        )}
      </div>
      <div className="form-actions">
        <button>Submit</button>
      </div>
    </form>
  );
};

export default SimpleInput;
