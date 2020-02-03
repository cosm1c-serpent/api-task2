const express = require('express');
const Joi = require('joi');
const path = require('path');
const bodyParser = require('body-parser');
const pool = require('./core/database.js');
const app = express();


app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));


app.use('/public',express.static(path.join(__dirname,'static')));



// for login form
app.get('/',(req,res)=>{
    res.sendFile(path.join(__dirname,'static','index.html'));
});

app.post('/',(req,res)=>{

    const username = req.body.username;
    const password = req.body.password;

    //database work here
    const sql= `select * from users where username="${username}" and password="${password}"`;
    console.log(sql);
    pool.query(sql,function(err,result){
        if(err){
            return console.error(err);
        }
        if(result.length>0){
            console.error(result);
            res.status(200).send('logged in successfully : '+username);
            res.end();
            return;
        }
          res.status(400).send('check your username and password');
          res.end();
          return;
    })
    
});

// for register from
app.get('/register',(req,res)=>{
    res.sendFile(path.join(__dirname,'static','index.html'));
});

app.post('/register',(req,res)=>{

    //joi validation
    const schema = Joi.object().keys({
        username : Joi.string().trim().alphanum().min(3).max(30).required(),
        email :    Joi.string().email().required(),
        password : Joi.string().regex(/^[a-zA-Z0-9]{8,30}$/).required(),
        confirm_password : Joi.any().equal(Joi.ref('password')).required()
  });

    Joi.validate(req.body,schema,(err,result)=>{
        if(err){
            console.error(err);
            res.status(400).send(err.details[0].message);
            return
        }
        console.log(result);
        const sql =`insert into users(username,email,password) values('${result.username}','${result.email}','${result.password}')`;
        pool.query(sql, function(err,result){
            if(err){
                console.error(err);
                return
            } 
            res.status(200).send('user is registered successfully');
            console.log('user is registered successfully : ',result);
            
        })
    });

});

app.get('/users',(req,res)=>{
    const sql = `select * from users`;
    pool.query(sql,(err,rows,fields)=>{
        if(err){
            console.log("failed to query for users. \n" +err);
            res.sendStatus(500);
            return;
        }
        console.log("fetching users in table.");
        res.json(rows)
        return;
    });
})

app.get('/users/:id',(req,res)=>{

    const id = req.params.id;
    const sql = `select * from users where id = ?`;
    pool.query(sql,[id],(err,rows,fields)=>{
        if(err){
            console.log("failed to query for user id. \n" +err);
            res.sendStatus(500);
            return;
        }if(!err){
        console.log("fetching user with id in table.");
        res.json(rows)
        return;
        }
    });
})



const port = process.env.PORT || 3000;
app.listen(port, ()=> console.log(`Listening on port ${port}.`));

