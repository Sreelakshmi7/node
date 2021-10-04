var mysql=require('mysql')
var connection=mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'root123@',
    database:'bookmyshow'
})

connection.connect(function(err){
    if(err)throw err
    console.log("connection success")

})
module.exports=connection;
