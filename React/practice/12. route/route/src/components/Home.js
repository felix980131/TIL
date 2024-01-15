import { Link } from "react-router-dom";

function HomePage() {
  return (
    <>
      <div>My Home Page</div>
      <p>
        Go to <Link to="/product">the list of products</Link>.
      </p>
    </>
  );
}

export default HomePage;
