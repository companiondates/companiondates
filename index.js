const express = require('express')
const app = express()
var cors = require('cors')
var cookieParser = require('cookie-parser')
app.use(cookieParser())
const port = 3000

app.use(express.static('public'));
app.use(cors())
app.get('/', (req, res) => {
    res.send('Hello World!')
})

app.listen(port, () => {
    console.log(`companion dates listening at http://localhost:${port}`)
})