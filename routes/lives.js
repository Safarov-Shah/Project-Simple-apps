const {Router} = require('express')
const router=Router()
const pool = require('../database')
router
    .get('/lives', (request, response,next) => {
        pool.query('select*from lives order by monsters asc;', (err, res) => {
       if (err) return next(err)
       response.json(res.rows)
    })
 })
 
    module.exports=router