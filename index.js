const express = require('express')
const app = express()
var cors = require('cors')
var cookieParser = require('cookie-parser')
const path = require('path')
app.use(cookieParser())

app.use(express.static(path.join(__dirname, '/companiondates.ca/dist')));

app.listen(process.env.PORT || 5000, () => {
    console.log(`companiondates listening at http://localhost:${process.env.PORT || 5000}`)
})