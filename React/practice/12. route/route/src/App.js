import { RouterProvider, createBrowserRouter } from "react-router-dom";
import HomePage from "./components/Home";
import ProductsPage from "./components/Products";

const router = createBrowserRouter([
  {
    path: "/",
    element: <HomePage />,
  },
  {
    path: "/product",
    element: <ProductsPage />,
  },
]);

function App() {
  return <RouterProvider router={router}></RouterProvider>;
}

export default App;
