import { useState } from "react";

function UsernameForm() {
  const [username, setUsername] = useState("Felix");

  const updateUsername = (event) => {
    setUsername(event.target.value);
  };

  return (
    <div>
      <label htmlFor="username">Enter a username</label>
      <input
        id="username"
        type="text"
        placeholder="username"
        value={username}
        onChange={updateUsername}
      />
      <button>Submit</button>
    </div>
  );
}

export default UsernameForm;
