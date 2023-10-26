function handlerSubmit(evt) {
  evt.preventDefault();
  console.log("submit the form");
}

function Form() {
  return (
    <form onSubmit={handlerSubmit}>
      <button>Submit</button>
    </form>
  );
}

export default Form;
