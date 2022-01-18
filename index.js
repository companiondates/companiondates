const express = require('express')
const app = express()
var cors = require('cors')
var cookieParser = require('cookie-parser')
const path = require('path')
var db = require('./database')
var bodyParser = require('body-parser')
require('dotenv').config();

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

app.use(cookieParser())


app.use(express.static(path.join(__dirname, '/companiondates.ca/dist')));

app.get('/getDolls', async (req, res) => {
    try {
        let dolls = (await db.execute('SELECT * FROM DOLLS'))[0]
        console.log(dolls)
        res.status(200).json(dolls)
    } catch (err) {
        res.status(500).json(err)
    }
})

app.post('/addDoll', async (req, res) => {
    const doll = req.body.doll
    try {
        let newDoll = await db.execute('INSERT INTO DOLLS (HEIGHT, NAME, BRAND, PRICE, PICTURE) VALUES(?,?,?,?,?)', [doll.height, doll.name, doll.brand, doll.price, doll.picture])
        res.status(200).json(newDoll)
    } catch (err) {
        res.status(500).json(err)
    }
})

app.delete('/deleteDoll', async (req, res) => {
    const doll = req.body.doll
    try {
        let deletedDoll = await db.execute('DELETE FROM DOLLS WHERE ID = ?', [doll.id])
        res.status(200).json(deletedDoll)
    } catch (err) {
        res.status(500).json(err)
    }
})

app.put('/updateDoll', async (req, res) => {
    const doll = req.body.doll
    try {
        let updatedDoll = await db.execute('UPDATE DOLLS SET HEIGHT = ?, NAME = ?, BRAND = ?, PRICE = ?, PICTURE = ?', [doll.height, doll.name, doll.brand, doll.price, doll.picture])
        res.status(200).json(updatedDoll)
    } catch (err) {
        res.status(500).json(err)
    }
})

app.listen(process.env.PORT || 5000, () => {
    console.log(`companiondates listening at http://localhost:${process.env.PORT || 5000}`)
})