function CartComponent() {
  return (
    <>
      <div className="card">
        <div className="card-body">
          <p className="text">
            <h1>Shopping Cart</h1>
          </p>
        </div>
      </div>
      <div className="list-group">
        <a
          href="#"
          className="list-group-item list-group-item-action "
          aria-current="true"
        >
          <div className="d-flex w-100 justify-content-between">
            <h5 className="mb-1">Binary Overflow Shirt</h5>
          </div>
          <p className="mb-1">Large (L)</p>
          <small>Price</small>
        </a>
        <a href="#" className="list-group-item list-group-item-action">
          <div className="d-flex w-100 justify-content-between">
            <h5 className="mb-1">Infinite Loop Album</h5>
          </div>
          <p className="mb-1">CD</p>
          <small className="text-body-secondary">Price</small>
        </a>
        <a href="#" className="list-group-item list-group-item-action">
          <div className="d-flex w-100 justify-content-between">
            <h5 className="mb-1">Algorithmic Amusement Album</h5>
          </div>
          <p className="mb-1">Vinyl</p>
          <small className="text-body-secondary">Price</small>
        </a>
      </div>
    </>
  );
}

export default CartComponent;
