var express = require('express');
var router = express.Router();
var db = require('../config/db')

router.get('/', function (req, res, next) {
    db.query("select r.movie_id,r.user_id,r.reserv_id,r.num_of_seats,r.movie_date,b.bookstatus  from reservation r inner join booking_status b on r.status=b.bookid", function (err, result) {
        res.send(result)
    })
})
router.get('/:userid', function (req, res, next) {
    db.query("select r.movie_id,m.movie_name,r.user_id,u.user_name,r.reserv_id,r.num_of_seats,r.movie_date,b.bookstatus from reservation r inner join booking_status b on r.status=b.bookid inner join user_details u on r.user_id=u.userid inner join movie_list m on r.movie_id=m.movie_id where u.userid=?",[req.params.userid],function (err, result) {
        res.send(result)
    })
})



router.post('/', function (req, res, next) {
    var data = req.body
    db.query("insert into reservation values(?,?,?,?,?,?)", [data.movie_id, data.user_id, data.reserv_id, data.num_of_seats, data.movie_date, 1], function (err, result) {
        if (err) {
            throw err
        }
        db.query("update movie_list set totalnumofseats=totalnumofseats-? where movie_id=?", [data.num_of_seats, data.movie_id], function (err, result) {
            if (err) {
                throw err
            }
        })
        res.send("data saved accordingly")
    })
})
router.put('/:id', function (req, res) {
    var data = req.body;

    db.query("update reservation set status=0 where reserv_id=?", [data.reserv_id], function (err, result) {
        if (err) {
            throw err
        }
    })

    db.query("update movie_list set totalnumofseats=totalnumofseats+? where movie_id=?", [data.num_of_seats, req.params.id], function (err, result) {
        if (err) {
            throw err
        }


        res.send("Data Updated Successfully")
    })
})
router.delete('/:id', function (req, res) {
    db.query("delete from reservation where reserv_id=?", [req.params.id], function (err, result) {
        if (err) {
            throw err
        }
        res.send("data deleted successfully")

    })
})

module.exports = router;