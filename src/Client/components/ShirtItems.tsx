import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min.js";

import BinaryNumbers from "./binary-code.jpg";

function ShirtItems() {
  return (
    <div className="card-group">
      <div className="card">
        <img src="/tshirt.png" className="card-img-top" alt="..." />
        <div className="card-body">
          <h5 className="card-title">Binary Overflow Shirt</h5>
          <p className="card-text">
            Design released to support our 1st album, Binary Overflow. Comes in
            standard sizes S, M, L, and XL.
          </p>
          <p className="card-text">
            <div className="dropdown">
              <button
                className="btn btn-secondary dropdown-toggle"
                type="button"
                data-bs-toggle="dropdown"
                aria-expanded="true"
              >
                Select Size
              </button>
              <ul className="dropdown-menu">
                <li>
                  <a className="dropdown-item" href="#">
                    Small (S)
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Medium (M)
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Large (L)
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Extra Large (XL)
                  </a>
                </li>
              </ul>
            </div>
            <div>
              <button type="button" className="btn btn-success">
                Add to Cart
              </button>
            </div>
          </p>
        </div>
      </div>
      <div className="card">
        <img src="/tshirt.png" className="card-img-top" alt="..." />
        <div className="card-body">
          <h5 className="card-title">Infinite Loop Shirt</h5>
          <p className="card-text">
            Design released to support our 2nd album, Infinite Loop. Comes in
            standard sizes S, M, L, and XL.
          </p>
          <p className="card-text">
            <div className="dropdown">
              <button
                className="btn btn-secondary dropdown-toggle"
                type="button"
                data-bs-toggle="dropdown"
                aria-expanded="true"
              >
                Select Size
              </button>
              <ul className="dropdown-menu">
                <li>
                  <a className="dropdown-item" href="#">
                    Small (S)
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Medium (M)
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Large (L)
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Extra Large (XL)
                  </a>
                </li>
              </ul>
            </div>
            <div>
              <button type="button" className="btn btn-success">
                Add to Cart
              </button>
            </div>
          </p>
        </div>
      </div>
      <div className="card">
        <img src="/tshirt.png" className="card-img-top" alt="..." />
        <div className="card-body">
          <h5 className="card-title">Algorithmic Amusement Shirt</h5>
          <p className="card-text">
            Design released to support our 3rd album, Algorithmic Amusement.
            Comes in standard sizes S, M, L, and XL.
          </p>
          <p className="card-text">
            <div className="dropdown">
              <button
                className="btn btn-secondary dropdown-toggle"
                type="button"
                data-bs-toggle="dropdown"
                aria-expanded="true"
              >
                Select Size
              </button>
              <ul className="dropdown-menu">
                <li>
                  <a className="dropdown-item" href="#">
                    Small (S)
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Medium (M)
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Large (L)
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Extra Large (XL)
                  </a>
                </li>
              </ul>
            </div>
            <div>
              <button type="button" className="btn btn-success">
                Add to Cart
              </button>
            </div>
          </p>
        </div>
      </div>
    </div>
  );
}

export default ShirtItems;
