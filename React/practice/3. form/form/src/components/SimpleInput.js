import { useState } from "react";

const SimpleInput = (props) => {
  const [enteredName, setEnterName] = useState("");
  const [enterNameTouched, setEnterNameTouched] = useState(false);

  const enteredNameIsValid = enteredName.trim() !== "";
  const nameInputIsInvalid = !enteredNameIsValid && enterNameTouched;

  const nameInputChangeHanlder = (event) => {
    setEnterName(event.target.value);
  };

  const formSubmissionHandler = (event) => {
    event.preventDefault();

    setEnterNameTouched(true);

    if (!enteredNameIsValid) {
      return;
    }
    console.log(enteredName);

    setEnterName("");
    setEnterNameTouched(false);
  };

  const nameInputBlurHandler = () => {
    setEnterNameTouched(true);
  };

  const nameInputClasses = nameInputIsInvalid
    ? "form-control invalid"
    : "form-control";

  return (
    <form onSubmit={formSubmissionHandler}>
      <div className={nameInputClasses}>
        <label htmlFor="name">Your Name</label>
        <input
          type="text"
          id="name"
          onChange={nameInputChangeHanlder}
          onBlur={nameInputBlurHandler}
          value={enteredName}
        />
        {nameInputIsInvalid && (
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
