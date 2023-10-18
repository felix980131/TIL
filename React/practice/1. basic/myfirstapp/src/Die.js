function Die() {
  const roll = Math.floor(Math.random() * 6) + 1;
  return <h1>Die Roll : {roll}</h1>;
}

export default Die;
