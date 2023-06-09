const {Router} = require('express')
const router=Router()
const pool = require('../database')

router
    .get('/', (request, response) => {
        pool.query('select*from monsters', (err, res) => {
            if (err) return console.log(err)
        response.json(res.rows)
        })
    })
    
    .get('/:id',(request,response,next)=>{
        const {id}=request.params
        pool.query('select*from monsters where id=$1',[id],(err,res)=>{
           if (err) return next(err)
           response.json(res.rows)
        })
     })

     .post('/', (req,res,next)=>{

        const {name,personality}
         })
 
    module.exports=router