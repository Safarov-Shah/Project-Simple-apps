const express = require('express')
const app = express()
const monsters=require('./routes/monsters.js')
const habitats=require('./routes/habitats.js')


app.use('/monsters',monsters)
app.use('/habitats',habitats)

app.use((err,req,res,next)=>{
   res.json(err)
})



module.exports = app;