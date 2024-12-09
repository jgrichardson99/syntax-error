import React from "react";
import ReactDOM from "react-dom/client";
import { createBrowserRouter, RouterProvider } from "react-router-dom";

import App from "./App";
import HomePage from "./components/HomePage";
import AccountPage from "./components/AccountPage";
import TourPage from "./components/TourPage";
import StorePage from "./components/StorePage";

import "bootstrap/dist/css/bootstrap.css";
import NotFoundPage from "./components/NotFoundPage";
import Test from "./components/Test";

const router = createBrowserRouter([
  {
    path: "/",
    element: <HomePage />,
    errorElement: <NotFoundPage />,
  },
  {
    path: "/home",
    element: <HomePage />,
  },
  {
    path: "/account",
    element: <AccountPage />,
  },
  {
    path: "/tour",
    element: <TourPage />,
  },
  {
    path: "/store",
    element: <StorePage />,
  },
  {
    path: "/test",
    element: <Test />,
  },
]);

ReactDOM.createRoot(document.getElementById("root") as HTMLElement).render(
  <React.StrictMode>
    <RouterProvider router={router} />
  </React.StrictMode>
);
