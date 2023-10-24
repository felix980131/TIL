function ListPicker({ values }) {
  const randomIndex = Math.floor(Math.random() * values.length);
  const randomElement = values[randomIndex];
  return (
    <>
      <p>The List of Values : {values}</p>
      <p>Random Values : {randomElement}</p>
    </>
  );
}

export default ListPicker;
