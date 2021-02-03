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
    const name = req.body.name;
    const lastname = req.body.lastname;
    const gender = req.body.gender;
    const email = req.body.email;
    const direction = req.body.direction;
    const phone = req.body.phone;
    const documenttype = req.body.documenttype;
    const document = req.body.document;

    db.query(
        "INSERT INTO employee (firstname, lastname, gender, email, phonenumber, address, documenttype, documentnumber) VALUES (?,?,?,?,?,?,?,?)",
        [name, lastname, gender, email, direction, phone, documenttype, document], (err, result) => {
            if (err) {
                console.log(err)
            } else {
                res.send("Values inserted");
            }
        }
    )
})

app.listen(3030, () => {
    console.log('Server running on port 3030');
});