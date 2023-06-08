const {Router} = require('express')
const router=Router()
const pool = require('../database')

router
    .get('/habitats', (request, response) => {
        pool.query('select*from habitats', (err, res) => {
            if (err) return console.log(err)
        response.json(res.rows)
        })
    })
    
    .get('/habitats/:id',(request,response,next)=>{

        const {id}=request.params
        pool.query('select*from habitats where id=$1',[id],(err,res)=>{
           if (err) return next(err)
           response.json(res.rows)
        })
     })
     
    module.exports=router