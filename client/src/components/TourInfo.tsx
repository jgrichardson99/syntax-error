import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";
import React, { useEffect, useState } from "react";
import axios from "axios";

function TourInfo() {
  // Below section (until before the return) will grab data from the database
  // It does a GET on the link in the bracket which is more detailed in syntax-error/backend/index.ts, where 8800 = backend listener port, and /tour is a subpage that would issue the query from the database
  const [tourData, setTourData] = useState([]);
  const [tourDatesData, setTourDateData] = useState([]);
  const [tourGuestsData, setTourGuestsData] = useState([]);

  useEffect(() => {
    const fetchAllTours = async () => {
      try {
        const res = await axios.get("http://localhost:8800/tour");
        setTourData(res.data[0]);
        setTourDateData(res.data[1]);
        setTourGuestsData(res.data[2]);
      } catch(err) {
        console.log(err);
      }
    }
    fetchAllTours();
  }, [])


  // Return true/false if the strings are the same
  function sameTour(tour1: string, tour2: string) {
    if (tour1===tour2) {
      return true;
    }
    return false;
  }

  // Trim off the timezone at the end of date
  function trimDate(date: string) {
    return date.slice(0,10)
  }


  return (
    <div className="list-group">
      {tourData.map(tour => (
            <div className="tours" key={tour.Name}>
              <details>
                <summary>
                  {tourGuestsData.map(tourGuests => (
                    <h5>
                      {tour.Name===tourGuests.Name ? "Syntax Error's " + tour.Name + " with " + tourGuests.Special_guests : "Syntax Error's " + tour.Name}
                    </h5>
                  ))}
                  <h5>
                    {/* Syntax Error's {tour.Name} */}
                    {/* Syntax Error's {tour.Name} with  @ {tour.Location} */}
                  </h5>
                </summary>
                    {tourDatesData.map(tourDates => (
                      <small>
                        {tour.Name===tourDates.Name ? (trimDate(tourDates.Date) + " @ " + tourDates.Location) : ""} {tour.Name===tourDates.Name ? <br /> : ""}
                      </small>
                    ))}
              </details>
            </div>
        ))}

      {/* <a
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
      </a> */}
    </div>
  );
}

export default TourInfo;
