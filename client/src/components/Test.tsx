import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";
import React, { useEffect, useState } from "react";
import axios from "axios";

const Test = () => {
    // Below section (until before the return) will grab data from the database
    // It does a GET on the link in the bracket which is more detailed in syntax-error/backend/index.ts, where 8800 = backend listener port, and /tour is a subpage that would issue the query from the database
    const [tour, setTour] = useState([]);
    useEffect(() => {
        const fetchAllTours = async () => {
            try {
                const res = await axios.get("http://localhost:8800/tour");
                setTour(res.data);
            } catch(err) {
                console.log(err);
            }
        }
        fetchAllTours();
    }, [])

    // First spaced out section is to display all
    return (
        <div className="list-group">


        {tour.map(tours => (
            <div className="tours" key={tours.Name}>
                <h2>{tours.Name}</h2>
                <h2>{tours.Length}</h2>
            </div>
        ))}


        <a
          href="#"
          className="list-group-item list-group-item-action "
          aria-current="true"
        >
          <div className="d-flex w-100 justify-content-between">
            <h5 className="mb-1">
              Syntax Error with Special Guests @ Calgary, AB.
            </h5>
          </div>
          <p className="mb-1">Venue Name: Venue Address</p>
          <small>January 1st, 2030 @ 7PM.</small>
        </a>
        <a href="#" className="list-group-item list-group-item-action">
          <div className="d-flex w-100 justify-content-between">
            <h5 className="mb-1">
              Syntax Error with Special Guests @ Edmonton, AB.
            </h5>
          </div>
          <p className="mb-1">Venue Name: Venue Address</p>
          <small className="text-body-secondary">January 2nd, 2030</small>
        </a>
        <a href="#" className="list-group-item list-group-item-action">
          <div className="d-flex w-100 justify-content-between">
            <h5 className="mb-1">
              Syntax Error with Special Guests @ Vancouver, BC @ 7PM.
            </h5>
          </div>
          <p className="mb-1">Venue Name: Venue Address</p>
          <small className="text-body-secondary">January 5th, 2030 @ 7PM.</small>
        </a>
        <a href="#" className="list-group-item list-group-item-action">
          <div className="d-flex w-100 justify-content-between">
            <h5 className="mb-1">
              Syntax Error with Special Guests @ Toronto, ON @ 7PM.
            </h5>
          </div>
          <p className="mb-1">Venue Name: Venue Address</p>
          <small className="text-body-secondary">January 8th, 2030 @ 7PM.</small>
        </a>
        <a href="#" className="list-group-item list-group-item-action">
          <div className="d-flex w-100 justify-content-between">
            <h5 className="mb-1">
              Syntax Error with Special Guests @ Winnipeg, MB @ 7PM.
            </h5>
          </div>
          <p className="mb-1">Venue Name: Venue Address</p>
          <small className="text-body-secondary">January 11th, 2030 @ 7PM.</small>
        </a>
      </div>
    )
}

export default Test