import { useState } from "react";

function SignupForm() {
  const [formData, setFormData] = useState({ firstName: "", lastName: "" });

  const handleChange = (event) => {
    const changeField = event.target.name;
    const newValue = event.target.value;

    setFormData((currentData) => {
      return { ...currentData, [changeField]: newValue };
    });
  };

  const handleSubmit = () => {
    console.log(formData);
  };

  return (
    <div>
      <label htmlFor="firstName">Enter a firstName</label>
      <input
        id="firstName"
        type="text"
        placeholder="firstName"
        value={formData.firstName}
        onChange={handleChange}
        name="firstName"
      />
      <label htmlFor="lastName">Enter a lastName</label>
      <input
        id="lastName"
        type="text"
        placeholder="lastName"
        value={formData.lastName}
        onChange={handleChange}
        name="lastName"
      />
      <button onClick={handleSubmit}>Submit</button>
    </div>
  );
}

export default SignupForm;
