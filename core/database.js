   const{
       createPool
   } = require('mysql');

   const pool = createPool({
    port:'3307',
    host:'localhost',
    user:'root',
    password:'cosm1c',
    database: 'www',
    multipleStatements:false,
    connectionLimit:10
   })

   pool.getConnection(function(err,connection){
    if (err) {
      console.log('database connection failed.');
      return;
    } else console.log('database connection successfull. \n');
}); 
    

   module.exports = pool;
