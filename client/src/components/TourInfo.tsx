import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";
import React, { useEffect, useState } from "react";
import axios from "axios";

function TourInfo() {
  const [tourData, setTourData] = useState([]);
  const [tourDatesData, setTourDateData] = useState([]);
  const [tourGuestsData, setTourGuestsData] = useState([]);

  // Grab database data
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

  // Trim off the timezone at the end of date
  function trimDate(date: string) {
    return date.slice(0,10)
  }

  return (
    <div className="list-group">
      {tourData.map(tour => (
            <div className="tours" key={tour.Name}>
              <details>
                {/*Tour Header*/}
                <summary>
                  {tourGuestsData.map(tourGuests => (
                    <h5>
                      {tour.Name===tourGuests.Name ? "Syntax Error's " + tour.Name + " with " + tourGuests.Special_guests : "Syntax Error's " + tour.Name}
                    </h5>
                  ))}
                  <h5>
                  </h5>
                </summary>
                  {/*Tour Expanded Detail*/}
                  {tourDatesData.map(tourDates => (
                    <small>
                      {tour.Name===tourDates.Name ? (trimDate(tourDates.Date) + " @ " + tourDates.Location) : ""} {tour.Name===tourDates.Name ? <br /> : ""}
                    </small>
                  ))}
              </details>
            </div>
        ))}
    </div>
  );
}

export default TourInfo;
