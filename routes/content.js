var express = require('express');
var router = express.Router();
var connection = require('../common/module.js').connection;

/* GET content listing. */
router.get('/', function(req, res) {
    connection.query('select types.title as typename,content.* from types,content where content.tid = types.id order by content.id desc', function(error, results) {
        if (error) {
            console.log('查询失败', error);
        } else {
            // console.log(results);
            connection.query('select * from types',function(error,results3){
                       if(error){
                          console.log('查询失败',error)
                       }else{

            res.render('content/index', { date: results, moment: require('moment'),result3:results3});
                       }
            })
        }
    })
})
router.get('/insert', function(req, res, next) {
    connection.query('select * from types', function(error, result) {
        if (error) {
            console.log('查询失败', error);
        } else {
            // console.log(result);
            res.render('content/insert', { date: result });
        }
    })
})

router.post('/insert', function(req, res) {
    console.log(req.body);
    req.body.content = req.body.content.replace(/"/g, '\\"').replace(/\\/g, '/');
    req.body.addtime = Math.floor(new Date().getTime() / 1000);
    connection.query('insert into content (tid,title,content,addtime)values( "' + req.body.tid + '","' + req.body.title + '","' + req.body.content + '","' + req.body.addtime + '")', function(err, results) {
        if (err) {
            console.log('添加数据失败', err);
        } else {
            res.redirect('/content');

        }
    })
})

router.post('/ainsert', function(req, res) {
    console.log(req.body);
    
    req.body.content = req.body.content.replace(/"/g, '\\"').replace(/\\/g, '/');
    req.body.addtime = Math.floor(new Date().getTime() / 1000);
    connection.query('insert into content (tid,title,content,addtime)values( "' + req.body.tid + '","' + req.body.title + '","' + req.body.content + '","' + req.body.addtime + '")', function(err, results) {
        if (err) {
            console.log(err);
            res.json({success:0});
        } else {
            // console.log(results.insertId);
            connection.query('select t.title as typename,a.* from content a,types t where t.id=a.tid and a.id='+results.insertId,function(error,results4){
                    if(error){
                        console.log('查询失败',error)
                    }else{
                       var desc=results4[0];
                       desc.addtime=require('moment').unix(desc.addtime).format('YYYY年MM月DD HH:mm:ss');
                       res.json({success:1,deta:desc});

                    }
            })
        }
    })
})
//注意 删除数据从数据库中删除了，再调回到首页，数据就已经不在了！
router.get('/delete/:id', function(req, res) {
    connection.query('delete from content where id=' + req.params.id, function(error, results) {
        if (error) {
            console.log('删除失败')
        } else {
            res.redirect('/content');
        }
    })
})
router.get('/update/:id', function(req, res) {
    connection.query('select * from content where id=' + req.params.id, function(error, results) {
        if (error) {
            console.log('查询数据失败', error)
        } else {
            // console.log(results[0]);
            connection.query('select * from types', function(error, results1) {
                if (error) {
                    console.log('查询失败', error)
                } else {
                    res.render('content/update', { date: results[0], types: results1 });
                }
            })
        }
    })
})
router.post('/update', function(req, res, next) {
    req.body.content = req.body.content.replace(/"/g, '\\"').replace(/\\/g, '/');
    req.body.addtime = Math.floor(new Date().getTime() / 1000);
    // console.log(req.body);
    connection.query('update content set content="' + req.body.content + '",addtime="' + req.body.addtime + '",tid="' + req.body.tid + '" where id=' + req.body.id, function(error, results) {
        if (error) {
            res.redirect('back');
        } else {
            // console.log(req.body);
            res.redirect('/content');
        }
    })
})
router.post('/adelete', function(req, res) {
    // console.log(req.body);
    connection.query('delete from content where id=' + req.body.id, function(error, result) {
        if (error) {
            res.json({ success: 0 })
        } else {
            res.json({ success: 1 })
        }
    })
})
module.exports = router;