import express from "express";
import mysql from "mysql";
import cors from "cors";

const app = express()

const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"password",
    database:"syntax-error"
})

app.use(express.json());
app.use(cors());

app.get("/", (req, res) => {
    res.json("Hello this is the backend")
})

app.get("/tour", (req, res) => {
    const q = "SELECT * FROM tour";
    db.query(q, (err, data) => {
        if (err) return res.json(err);
        return res.json(data);
    })
})

app.post("/books", (req, res) => {
    const q = "INSERT INTO tour ('Name', 'Length') VALUES (?)";
    const values = ["New Tour", "2 Days"];
    db.query(q, [values], (err, data) => {
        if (err) return res.json(err);
        return res.json(data);
    })
})

app.listen(8800, ()=>{
    console.log("Connected to backend")
})