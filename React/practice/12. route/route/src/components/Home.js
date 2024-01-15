import { Link, useNavigate } from "react-router-dom";

function HomePage() {
  const navigate = useNavigate();

  function navigationHandler() {
    navigate("/product");
  }

  return (
    <>
      <div>My Home Page</div>
      <p>
        Go to <Link to="/product">the list of products</Link>.
      </p>
      <p>
        <button onClick={navigationHandler}>Navigate</button>
      </p>
    </>
  );
}

export default HomePage;
