import { useState } from "react";

const useInput = (validateValue) => {
  const [enteredValue, setEnterValue] = useState("");
  const [isTouched, setIsTouched] = useState(false);

  const valueIsValid = validateValue(enteredValue);
  const hasError = !valueIsValid && isTouched;

  const valueChangeHanlder = (event) => {
    setEnterValue(event.target.value);
  };

  const inputBlurHandler = () => {
    setIsTouched(true);
  };

  const reset = () => {
    setEnterValue("");
    setIsTouched(false);
  };

  return {
    value: enteredValue,
    isValid: valueIsValid,
    hasError,
    valueChangeHanlder,
    inputBlurHandler,
    reset,
  };
};

export default useInput;
