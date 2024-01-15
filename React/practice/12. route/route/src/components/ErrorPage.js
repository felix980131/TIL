import { Link } from "react-router-dom";
import MainNavigation from "./MainNavigation";

function ErrorPage() {
  return (
    <>
      <MainNavigation />
      <main>
        <h1>An error occurred!</h1>
        <p>Could not found this page</p>
      </main>
    </>
  );
}

export default ErrorPage;
