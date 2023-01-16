const express = require('express')
const app = express()
var cookieParser = require('cookie-parser')
var db = require('../database')
var bodyParser = require('body-parser')
require('dotenv').config();
const serverless = require('serverless-http')

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())
app.use(cookieParser())


const router = express.Router();
app.use("/.netlify/functions/", router);


router.get('/api/hello', async (req, res) => {
    try {
        let dolls = (await db.execute('SELECT * FROM DOLLS'))[0]
        res.status(200).json(dolls)
    } catch (err) {
        res.status(500).json(err)
    }
})


router.post('/api/getDolls', async (req, res) => {
    try {
        let dolls = (await db.execute('SELECT * FROM DOLLS'))[0]
        res.status(200).json(dolls)
    } catch (err) {
        res.status(500).json(err)
    }
})

router.post('/api/getDoll', async (req, res) => {
    let dollID = req.body.dollID
    try {
        let doll = (await db.execute('SELECT * FROM DOLLS where ID = ?', [dollID]))[0]
        res.status(200).json(doll)
    } catch (err) {
        res.status(500).json(err)
    }
})

router.post('/api/addDoll', async (req, res) => {
    const doll = req.body.doll
    try {
        let newDoll = await db.execute('INSERT INTO DOLLS (HEIGHT, NAME, BRAND, PRICE, PICTURE, WEIGHT, MATERIAL_TYPE, ETHNICITY, CATEGORY) VALUES(?,?,?,?,?,?,?,?,?)', [doll.height, doll.name, doll.brand, doll.price, doll.picture, doll.weight, doll.materialType, doll.ethnicity, doll.category])
        res.status(200).json(newDoll)
    } catch (err) {
        res.status(500).json(err)
    }
})

router.delete('/api/deleteDoll', async (req, res) => {
    const doll = req.body.doll
    try {
        let deletedDoll = await db.execute('DELETE FROM DOLLS WHERE ID = ?', [doll.id])
        res.status(200).json(deletedDoll)
    } catch (err) {
        res.status(500).json(err)
    }
})

router.put('/api/updateDoll', async (req, res) => {
    const doll = req.body.doll
    try {
        console.log(doll)
        let updatedDoll = await db.execute('UPDATE DOLLS SET HEIGHT = ?, NAME = ?, BRAND = ?, PRICE = ?, PICTURE = ?, WEIGHT = ?, MATERIAL_TYPE = ?, ETHNICITY = ?, CATEGORY = ? WHERE ID = ?', [doll.height, doll.name, doll.brand, doll.price, doll.picture, doll.weight, doll.materialType, doll.ethnicity, doll.category, doll.id])
        res.status(200).json(updatedDoll)
    } catch (err) {
        res.status(500).json(err)
    }
})

// app.listen(process.env.PORT || 5000, () => {
//     console.log(`companiondates listening at http://localhost:${process.env.PORT || 5000}`)
// })

module.exports.handler = serverless(app)