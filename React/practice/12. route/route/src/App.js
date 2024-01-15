import {
  RouterProvider,
  createBrowserRouter,
  createRoutesFromElements,
  Route,
} from "react-router-dom";
import HomePage from "./components/Home";
import ProductsPage from "./components/Products";

const routeDefinitions = createRoutesFromElements(
  <Route>
    <Route path="/" element={<HomePage />} />
    <Route path="/product" element={<ProductsPage />} />
  </Route>
);

const router = createBrowserRouter(routeDefinitions);

// const router = createBrowserRouter([
//   {
//     path: "/",
//     element: <HomePage />,
//   },
//   {
//     path: "/product",
//     element: <ProductsPage />,
//   },
// ]);

function App() {
  return <RouterProvider router={router}></RouterProvider>;
}

export default App;
