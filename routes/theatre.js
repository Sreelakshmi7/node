var express = require('express');
var router = express.Router();
var db = require('../config/db')

router.get('/', function (req, res, next) {
    db.query("select m.movie_id,m.screen_num,m.movie_name,l.lang,g.gen,m.movie_duration,s.show_tim,m.price,m.totalnumofseats from movie_list m inner join movie_language l on m.language=l.lang_id  inner join movie_gen g on m.genere=g.gen_id inner join  show_movie s on m.show_time=s.show_id", function (err, result) {
        res.send(result)
    })
});
router.get('/data', function (req, res, next) {
    db.query("select * from movie_language", function (err, result) {
        res.send(result)
    })
});
router.get('/data1', function (req, res, next) {
    db.query("select * from movie_gen ", function (err, result) {
        res.send(result)
    })
});


router.get('/data2', function (req, res, next) {
    db.query("select * from show_movie ", function (err, result) {
        res.send(result)
    })
});


router.post("/data", function (req, res) {

    var data = req.body
    db.query("insert into  movie_list values(?,?,?,?,?,?,?,?,?)", [data.movie_id,data.screen_num, data.movie_name, data.language, data.genere, data.movie_duration, data.show_time, data.price, data.totalnumofseats], function (err, result) {
        if (err) {
            throw err
        }
        res.send("data saved successfully")
    })

})
router.put('/:id', function (req, res) {
    data = req.body
    db.query("update movie_list set movie_id=?,movie_name=?,language=?,genere=?,movie_duration=?,show_time=?,price=?,totalnumofseats=? where screen_num=?", [data.movie_id,data.movie_name, data.language, data.genere, data.movie_duration,data.show_time,data.price,data.totalnumofseats,req.params.id], function (err) {
        if (err) {
            throw err
        }
        res.send("Updated successfully")
    }
    )
})

router.delete('/:id', function (req, res) {
    db.query("delete from movie_list where movie_id=?", [req.params.id], function (err) {
        if (err) {
            throw err
        }
        res.send("deleted successfully")
    })
})

module.exports = router;