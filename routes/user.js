var express = require('express');
var router = express.Router();
var db = require('../config/db')
router.get('/', function (req, res) {
    db.query("select * from user_details", function (err, result) {
        res.send(result)
    })
})
router.post('/', function (req, res) {
    var data = req.body
    db.query("insert into user_details  values (?,?,?)", [data.userid, data.user_name, data.mobilenum], function (err, result) {
        if (err) {
            throw err
        }
        res.send("data saved successfully")

    })
})

router.put('/:id', function (req, res) {
    var data = req.body
    db.query("update user_details set user_name=?,mobilenum=? where userid=?", [data.user_name, data.mobilenum, req.params.id], function (err, result) {
        if (err) {
            throw err
        }
        res.send("data updated successfully")

    })

})

router.delete('/:id', function (req, res) {
    db.query("delete from user_details where userid=?", [req.params.id], function (err, result) {
        if (err) {
            throw err
        }
        res.send("data deleted successfully")

    })
})
module.exports = router;



