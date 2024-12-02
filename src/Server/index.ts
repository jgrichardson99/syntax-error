import mysql, { createConnection } from "mysql";
import express, {Express, Request, Response} from "express";

const app: Express = express();
const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"password",
    database:"syntax-error"
});

app.get("/", (req: Request, res: Response) => {
    res.json("Hello this is the backend")
})

app.get("/testAccount", (req: Request, res: Response) => {
    const query = "SELECT * FROM account"
    db.query(query, (err: any, data: any) => {
        if (err) return res.json(err)
            return res.json(data)
    })
})

app.listen(8800, () => {
    console.log("Connected to backend")
})

// Run this file with "npx tsx ./src/Server/index.ts"

/*
From "React Node.js MySQL CRUD Tutorial for Beginners" video given on D2L https://www.youtube.com/watch?v=fPuLnzSjPLE
import express from "express"
import mysql from "mysql"

const app = express()
const db = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"password",
    database:"syntax-error"
})

app.get("/", (req,res)=>{
    res.json("Hello this is the backend")
})

app.get("/account", (req,res)=>{
    const q = "SELECT * FROM account"
    db.query(q, (err, data)=>{
        if (err) return res.json(err)
        return res.json(data)
    })
})

app.listen(8800, ()=>{
    console.log("Connected to backend")
})
*/