const express = require('express')
const app = express()
var cors = require('cors')
var cookieParser = require('cookie-parser')
const path = require('path')
app.use(cookieParser())
const port = 3000

app.use(express.static(path.join(__dirname, '/companiondates.ca/dist')));

app.listen(port, () => {
    console.log(`companiondates listening at http://localhost:${port}`)
})