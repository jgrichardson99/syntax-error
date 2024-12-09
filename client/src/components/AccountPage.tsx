import CartComponent from "./CartComponent";
import NavBar from "./NavBar";
import PaymentComponent from "./PaymentComponent";

function AccountPage() {
  return (
    <>
      <div>
        <NavBar />
      </div>

      <div className="row align-items-start">
        <div className="col"></div>
        <div className="col-sm-9 p-3">
          <div>
            <CartComponent />
          </div>
          <div>
            <PaymentComponent />
          </div>
        </div>
        <div className="col"></div>
      </div>
    </>
  );
}

export default AccountPage;
