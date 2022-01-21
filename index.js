const express = require('express');
const app = express();
const port = 5600
const getRouter = require('./routers/router')

app.use(express.json())
app.use(express.urlencoded({extended: true}))
app.use('/api', getRouter)


app.listen(port, function(){
    console.log('Aplikasi berhasil dijalankan pada port : 5600')
})