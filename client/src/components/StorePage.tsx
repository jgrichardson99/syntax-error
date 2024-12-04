import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";

import NavBar from "./NavBar";
import ShirtItems from "./ShirtItems";
import AlbumItems from "./AlbumItems";

function StorePage() {
  return (
    <>
      <div>
        <NavBar />
      </div>
      <div>
        <ShirtItems />
      </div>
      <div>
        <AlbumItems />
      </div>
      <div className="d-grid gap-2">
        <button className="btn btn-warning" type="button">
          View Cart
        </button>
      </div>
    </>
  );
}

export default StorePage;
