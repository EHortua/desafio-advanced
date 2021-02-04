const express = require('express');
const app = express();
const mysql = require('mysql');
const cors = require('cors');

app.use(cors());
app.use(express.json());
const db = mysql.createConnection({
    user : 'root',
    host : 'localhost',
    password: '123456789',
    database: 'advancesystem',
});

app.post('/create', (req, res) => {
    const firstname = req.body.firstname;
    const lastname = req.body.lastname;
    const gender = req.body.gender;
    const email = req.body.email;
    const address = req.body.address;
    const phonenumber = req.body.phonenumber;
    const documenttype = req.body.documenttype;
    const documentnumber = req.body.documentnumber;

    db.query(
        "INSERT INTO employee (firstname, lastname, gender, email, phonenumber, address, documenttype, documentnumber) VALUES (?,?,?,?,?,?,?,?)",
        [firstname, lastname, gender, email, address, phonenumber, documenttype, documentnumber], (err, result) => {
            if (err) {
                console.log(err)
            } else {
                res.send("Values inserted");
            }
        }
    );
});

app.get('/employee', (req, res) => {
    db.query("SELECT * FROM employee", (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
        }       
    });
});

app.delete('/delete/:employeeid', (req, res) =>{
    const employeeid = req.params.employeeid
    db.query("DELETE FROM employee WHERE employeeid = ?", employeeid, (err, result) =>{
        if(err) {
            console.log(err);
        } else {
            res.send(result);
        }
    })
});

app.listen(3030, () => {
    console.log('Server running on port 3030');
});