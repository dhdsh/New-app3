var express = require('express');
var router = express.Router();
var connection = require('../common/module.js').connection;

/* GET users listing. */
router.get('/', function(req, res, next) {
    connection.query('select count(*) as total from users', function(error, results) {
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
            connection.query('select * from users limit ' + (page.now - 1) * page.every + ',' + page.every, function(error, results) {

                if (error) {
                    console.log('查询失败', error)
                } else {
                    res.render('users/index', { date: results, moment: require('moment'), page: page, admin: req.session.admin }); //要先查询到再进行遍历，而不是添加之后再遍历，所以数据传出来是查询出结果之后！
                    // console.log(results);
                }
            })

        }


    })
});


router.get('/insert', function(req, res, next) {
    res.render('users/insert')
})
router.post('/insert', function(req, res) {
    req.body.password = req.body.password = require('../common/common.js').md5(req.body.password);
    req.body.addtime = Math.floor(new Date().getTime() / 1000)
    connection.query('insert into users (username,password,age,sex,phone,addtime)values("' + req.body.username + '","' + req.body.password + '",' + req.body.age + ',"' + req.body.sex + '","' + req.body.phone + '","' + req.body.addtime + '")', function(err, results) {
        if (err) {
            console.log('添加数据失败')
        } else {
            // res.render('users');
            res.redirect('/users');
            // console.log(results);
        }
    })
})
//注意 删除数据从数据库中删除了，再调回到首页，数据就已经不在了！
router.get('/delete/:id', function(req, res) {
    connection.query('delete from users where id=' + req.params.id, function(error, results) {

        if (error) {
            console.log('删除失败')
        } else {
            res.redirect('/users');
        }
    })
})
router.get('/update/:id', function(req, res) {
    connection.query('select * from users where id=' + req.params.id, function(error, results) {
        if (error) {
            console.log('查询数据失败', error)
        } else {
            // console.log(results[0]);
            res.render('users/update', { date: results[0] });
        }
    })
})
router.post('/update', function(req, res, next) {
    // console.log(req.body);
    connection.query('update users set username="' + req.body.username + '",age="' + req.body.age + '",sex="' + req.body.sex + '" where id=' + req.body.id, function(error, results) {
        if (error) {
            res.redirect('back');
        } else {
            // console.log(req.body);
            res.redirect('/users');
        }
    })
})
router.get('/image/:id', function(req, res) {
    res.render('users/image', { id: req.params.id });
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
            connection.query('update users set photo="' + req.file.filename + '.jpg' + '" where id=' + req.body.id, function(error, results) {
                if (error) {
                    console.log('添加失败', error);

                } else {
                    res.redirect('/users');
                }
            })
        }
    })
})


module.exports = router;