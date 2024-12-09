import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";

import BinaryNumbers from "./binary-code.jpg";

function AlbumItems() {
  return (
    <div className="card-group">
      <div className="card">
        <img src="/download.jpg" className="card-img-top" alt="..." />
        <div className="card-body">
          <h5 className="card-title">Binary Overflow Album</h5>
          <p className="card-text">
            Enjoy a physical copy of our 1st album, Binary Overflow! This album
            is a 20 song album that is 20 mins in length. Comes in Cd, Vinyl, or
            Cassette.
          </p>
          <p className="card-text">
            <div className="dropdown">
              <button
                className="btn btn-secondary dropdown-toggle"
                type="button"
                data-bs-toggle="dropdown"
                aria-expanded="true"
              >
                Select Type
              </button>
              <ul className="dropdown-menu">
                <li>
                  <a className="dropdown-item" href="#">
                    CD
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Vinyl
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Cassette
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
        <img src="/infinite.jpg" className="card-img-top" alt="..." />
        <div className="card-body">
          <h5 className="card-title">Infinite Loop Album</h5>
          <p className="card-text">
            Enjoy a physical copy of our 2nd album, Infinite Loop! This album is
            a 10 song album that is 30 mins in length. Comes in Cd, Vinyl, or
            Cassette.
          </p>
          <p className="card-text">
            <div className="dropdown">
              <button
                className="btn btn-secondary dropdown-toggle"
                type="button"
                data-bs-toggle="dropdown"
                aria-expanded="true"
              >
                Select Type
              </button>
              <ul className="dropdown-menu">
                <li>
                  <a className="dropdown-item" href="#">
                    CD
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Vinyl
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Cassette
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
        <img src="/algorithm.jpg" className="card-img-top" alt="..." />
        <div className="card-body">
          <h5 className="card-title">Algorithmic Amusement Album</h5>
          <p className="card-text">
            Enjoy a physical copy of our 3rd album, Algorithmic Amusement! This
            album is a 1 song album that is 40 mins in length. Comes in Cd,
            Vinyl, or Cassette.
          </p>
          <p className="card-text">
            <div className="dropdown">
              <button
                className="btn btn-secondary dropdown-toggle"
                type="button"
                data-bs-toggle="dropdown"
                aria-expanded="true"
              >
                Select Type
              </button>
              <ul className="dropdown-menu">
                <li>
                  <a className="dropdown-item" href="#">
                    CD
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Vinyl
                  </a>
                </li>
                <li>
                  <a className="dropdown-item" href="#">
                    Cassette
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

export default AlbumItems;
