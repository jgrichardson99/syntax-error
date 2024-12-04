import NavBar from "./NavBar";

function HomePage() {
  return (
    <>
      <div>
        <NavBar />
      </div>
      <div className="card">
        <div className="card-body">
          <p className="text-center">
            <h1>Syntax Error Official Website</h1>
          </p>
        </div>
      </div>
      <div className="card">
        <div className="card-body">
          <p className="text-center">
            <h3>About the band:</h3>
          </p>
        </div>
        <div className="card-body">
          <p className="text-center">
            Syntax Error is a band from Calgary, Alberta themed around aspects
            of computer science. This is because all the band members met in a
            computer science course where they worked on a database project
            together. They formed Syntax Error in 2027 and performed covers of
            their favorite musicians for the first year of their career. They
            Then started working on their first album which would be titled
            Binary Overflow and released in 2028. Since then, they released two
            other albums; Infinite Loop (2029) and Algorithmic Amusement (2030).
          </p>
        </div>
      </div>
      <div className="card">
        <div className="card-body">
          <p className="text-center">
            <h3>Band Members:</h3>
          </p>
        </div>

        <div className="card-body">
          <p className="text-center">John Richardson - Harsh vocals, Guitar</p>
        </div>
        <div className="card-body">
          <p className="text-center">Richard Hoang - Clean vocals, keyboards</p>
        </div>
        <div className="card-body">
          <p className="text-center">Hadi Alrihani - Bass, Drums</p>
        </div>
      </div>
    </>
  );
}

export default HomePage;
