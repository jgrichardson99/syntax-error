function PaymentComponent() {
  return (
    <>
      <div className="card">
        <div className="card-body">
          <p className="text">
            <h1>Payment Information</h1>
          </p>
        </div>
      </div>
      <form>
        <div className="mb-3">
          <label htmlFor="firstName" className="form-label">
            First Name
          </label>
          <input type="text" className="form-control" id="firstName" />
        </div>
        <div className="mb-3">
          <label htmlFor="lastName" className="form-label">
            Last Name
          </label>
          <input type="text" className="form-control" id="lastName" />
        </div>
        <div className="mb-3">
          <label htmlFor="exampleInputEmail1" className="form-label">
            Email address
          </label>
          <input
            type="email"
            className="form-control"
            id="exampleInputEmail1"
          />
        </div>
        <div className="mb-3">
          <label htmlFor="shippingAddress" className="form-label">
            Shipping Address
          </label>
          <input type="text" className="form-control" id="shippingAddress" />
        </div>
        <div className="mb-3">
          <label htmlFor="cardNumber" className="form-label">
            Card Number
          </label>
          <input type="text" className="form-control" id="cardNumber" />
        </div>
        <button type="submit" className="btn btn-primary">
          Submit
        </button>
      </form>
    </>
  );
}

export default PaymentComponent;
