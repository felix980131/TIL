import { useState } from "react";

function SignupForm() {
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");

  const updateFirstName = (event) => {
    setFirstName(event.target.value);
  };
  const updateLastName = (event) => {
    setLastName(event.target.value);
  };
  const handleSubmit = () => {
    console.log(firstName, lastName);
  };

  return (
    <div>
      <label htmlFor="firstName">Enter a firstName</label>
      <input
        id="firstName"
        type="text"
        placeholder="firstName"
        value={firstName}
        onChange={updateFirstName}
      />
      <label htmlFor="lastName">Enter a lastName</label>
      <input
        id="lastName"
        type="text"
        placeholder="lastName"
        value={lastName}
        onChange={updateLastName}
      />
      <button onClick={handleSubmit}>Submit</button>
    </div>
  );
}

export default SignupForm;
