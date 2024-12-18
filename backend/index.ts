import express from "express";
import mysql from "mysql";
import cors from "cors";

// Connect to database
const app = express()
const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"password",
    database:"syntax-error",
    multipleStatements: true
})

app.use(express.json());
app.use(cors());

// Homepage
app.get("/", (req, res) => {
    res.json("Hello this is the backend")
})

// Tours Page
app.get("/tour", (req, res) => {
    const q = "SELECT * FROM tour; SELECT * FROM tour_dates; SELECT * FROM tour_guests";
    db.query(q, (err, data) => {
        if (err) return res.json(err);
        console.log(data)
        return res.json(data);
    })
})

app.listen(8800, ()=>{
    console.log("Connected to backend")
})