import { useEffect, useState } from "react";

const SimpleInput = (props) => {
  const [enteredName, setEnterName] = useState("");
  const [enterNameTouched, setEnterNameTouched] = useState(false);

  const [enteredEmail, setEnterEmail] = useState("");
  const [enterEmailTouched, setEnterEmailTouched] = useState(false);

  const enteredNameIsValid = enteredName.trim() !== "";
  const nameInputIsInvalid = !enteredNameIsValid && enterNameTouched;

  const enteredEmailIsValid = enteredEmail.includes("@");
  const emailIsInvalid = !enteredEmailIsValid && enterEmailTouched;

  let formIsValid = false;

  if (enteredNameIsValid && enteredEmailIsValid) {
    formIsValid = true;
  }

  const nameInputChangeHanlder = (event) => {
    setEnterName(event.target.value);
  };

  const emailInputChangeHanlder = (event) => {
    setEnterEmail(event.target.value);
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

    setEnterEmail("");
    setEnterEmailTouched(false);
  };

  const nameInputBlurHandler = () => {
    setEnterNameTouched(true);
  };

  const emailInputBlurHandler = () => {
    setEnterEmailTouched(true);
  };

  const nameInputClasses = nameInputIsInvalid
    ? "form-control invalid"
    : "form-control";

  const emailInputClasses = emailIsInvalid
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
      <div className={emailInputClasses}>
        <label htmlFor="email">Your Email</label>
        <input
          type="email"
          id="email"
          onChange={emailInputChangeHanlder}
          onBlur={emailInputBlurHandler}
          value={enteredEmail}
        />
        {emailIsInvalid && (
          <p className="error-text">Plase enter a valid email.</p>
        )}
      </div>
      <div className="form-actions">
        <button disabled={!formIsValid}>Submit</button>
      </div>
    </form>
  );
};

export default SimpleInput;
