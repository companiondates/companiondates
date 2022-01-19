const express = require('express')
const app = express()
var cors = require('cors')
var cookieParser = require('cookie-parser')
const path = require('path')
var db = require('./database')
var bodyParser = require('body-parser')
var fallback = require('express-history-api-fallback')
require('dotenv').config();
var root = path.join(__dirname, '/companiondates.ca/dist')
var history = require('connect-history-api-fallback');

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())
app.use(cookieParser())

app.use(express.static(root));
app.use(fallback('index.html', { root }))
app.use(history({
    rewrites: [
        {
            from: /^\/api\/.*$/,
            to: function (context) {
                return context.parsedUrl.path
            }
        }
    ]
}))

app.post('/api/getDolls', async (req, res) => {
    try {
        let dolls = (await db.execute('SELECT * FROM DOLLS'))[0]
        res.status(200).json(dolls)
    } catch (err) {
        res.status(500).json(err)
    }
})

app.post('/api/getDoll', async (req, res) => {
    let dollID = req.body.dollID
    try {
        let doll = (await db.execute('SELECT * FROM DOLLS where ID = ?', [dollID]))[0]
        res.status(200).json(doll)
    } catch (err) {
        res.status(500).json(err)
    }
})

app.post('/api/addDoll', async (req, res) => {
    const doll = req.body.doll
    try {
        let newDoll = await db.execute('INSERT INTO DOLLS (HEIGHT, NAME, BRAND, PRICE, PICTURE, WEIGHT, MATERIAL_TYPE, ETHNICITY, CATEGORY) VALUES(?,?,?,?,?,?,?,?,?)', [doll.height, doll.name, doll.brand, doll.price, doll.picture, doll.weight, doll.materialType, doll.ethnicity, doll.category])
        res.status(200).json(newDoll)
    } catch (err) {
        res.status(500).json(err)
    }
})

app.delete('/api/deleteDoll', async (req, res) => {
    const doll = req.body.doll
    try {
        let deletedDoll = await db.execute('DELETE FROM DOLLS WHERE ID = ?', [doll.id])
        res.status(200).json(deletedDoll)
    } catch (err) {
        res.status(500).json(err)
    }
})

app.put('/api/updateDoll', async (req, res) => {
    const doll = req.body.doll
    try {
        console.log(doll)
        let updatedDoll = await db.execute('UPDATE DOLLS SET HEIGHT = ?, NAME = ?, BRAND = ?, PRICE = ?, PICTURE = ?, WEIGHT = ?, MATERIAL_TYPE = ?, ETHNICITY = ?, CATEGORY = ? WHERE ID = ?', [doll.height, doll.name, doll.brand, doll.price, doll.picture, doll.weight, doll.materialType, doll.ethnicity, doll.category, doll.id])
        res.status(200).json(updatedDoll)
    } catch (err) {
        res.status(500).json(err)
    }
})

app.listen(process.env.PORT || 5000, () => {
    console.log(`companiondates listening at http://localhost:${process.env.PORT || 5000}`)
})