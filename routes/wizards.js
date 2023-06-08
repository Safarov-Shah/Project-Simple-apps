const {Router} = require('express')
const router=Router()
const pool = require('../database')

router
    .get('/fortunes', (request, response) => {
        pool.query('select*from monsters', (err, res) => {
            if (err) return console.log(err)
        response.json(res.rows)
        })
    })
 
    module.exports=router