var express = require('express');
var router = express.Router();
var connection = require('../common/module.js').connection;

/* GET types listing. */
router.get('/', function(req, res, next) {
    connection.query('select count(*) as total from types', function(error, results) {
        if (error) {
            console.log('获取数据失败', error)
        } else {
            var page = {};
            page.total = results[0].total;
            page.every = 5;
            page.now = req.query.p ? Number(req.query.p) : 1;
            page.pages = Math.ceil(page.total / page.every);
            page.prev = page.now - 1 < 1 ? 1 : page.now - 1;
            page.next = page.now + 1 > Math.ceil(page.total / page.every) ? Math.ceil(page.total / page.every) : page.now + 1;
            // console.log(results[0].total);
            connection.query('select * from types limit ' + (page.now - 1) * page.every + ',' + page.every, function(error, results) {

                if (error) {
                    console.log('查询失败', error)
                } else {
                    res.render('types/index', { date: results, moment: require('moment'), page: page, admin: req.session.admin }); //要先查询到再进行遍历，而不是添加之后再遍历，所以数据传出来是查询出结果之后！
                    // console.log(results);
                }
            })

        }


    })
});


router.get('/insert', function(req, res, next) {
    res.render('types/insert')
})
router.post('/insert', function(req, res) {

    req.body.addtime = Math.floor(new Date().getTime() / 1000)
    connection.query('insert into types (title,addtime)values("' + req.body.title + '","' + req.body.addtime + '")', function(err, results) {
        if (err) {
            console.log('添加数据失败')
        } else {
            // res.render('types');
            res.redirect('/types');
            // console.log(results);
        }
    })
})
//注意 删除数据从数据库中删除了，再调回到首页，数据就已经不在了！
router.get('/delete/:id', function(req, res) {
    connection.query('delete from types where id=' + req.params.id, function(error, results) {

        if (error) {
            console.log('删除失败')
        } else {
            res.redirect('/types');
        }
    })
})
router.get('/update/:id', function(req, res) {
    connection.query('select * from types where id=' + req.params.id, function(error, results) {
        if (error) {
            console.log('查询数据失败', error)
        } else {
            // console.log(results[0]);
            res.render('types/update', { date: results[0] });
        }
    })
})
router.post('/update', function(req, res, next) {
    req.body.addtime = Math.floor(new Date().getTime() / 1000);
    // console.log(req.body);
    connection.query('update types set title="' + req.body.title + '",addtime="' + req.body.addtime + '" where id=' + req.body.id, function(error, results) {
        if (error) {
            res.redirect('back');
        } else {
            // console.log(req.body);
            res.redirect('/types');
        }
    })
})
router.get('/image/:id', function(req, res) {
    res.render('types/image', { id: req.params.id });
})
var multer = require('multer');
var upload = multer({
    dest: 'public/upload'
})
/*
console.log(req.file);

//如下面内容所示
fieldname: 'photo',
originalname: '14.png',
encoding: '7bit',
mimetype: 'image/png',
destination: 'public/upload',
filename: '992406501d4bf3c27ffbd4cda6005830',
path: 'public\\upload\\992406501d4bf3c27ffbd4cda6005830',
size: 71183 
*/

router.post('/image', upload.single('photo'), function(req, res) {
    if (req.file.size > 102400) {
        res.send('文件过大，请重新上传')
    }
    var arr = ['image/png', 'image/jpeg', 'image/jpg', 'image/webp'];
    if (arr.indexOf(req.file.mimetype) === -1) {
        res.send('文件非法，请重新上传');
    }
    var fs = require('fs');
    var path = require('path');
    var oldname = path.join('public/upload', req.file.filename)
    var newname = path.join('public/upload', req.file.filename + '.jpg');
    fs.rename(oldname, newname, function(error) {
        if (error) {
            console.log('修改失败', error);
        } else {
            connection.query('update types set photo="' + req.file.filename + '.jpg' + '" where id=' + req.body.id, function(error, results) {
                if (error) {
                    console.log('添加失败', error);

                } else {
                    res.redirect('/types');
                }
            })
        }
    })
})


module.exports = router;