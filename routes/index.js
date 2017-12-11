var express = require('express');
var router = express.Router();
var connection = require('../common/module.js').connection;

/* GET home page. */
router.get('/', function(req, res, next) {
    var where = '';
    var param='';
    if (req.query.tid) {
    where = ' where tid='+req.query.tid;
    param='&tid='+req.query.tid;
    }
    connection.query('select count(*) as total from content'+where, function(error, results) {
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
            connection.query('select * from content '+where+' limit ' + (page.now - 1) * page.every + ',' + page.every, function(error, results) {
                console.log(req.query);
                if (error) {
                    console.log('查询失败', error)
                } else {
                    connection.query('select * from types', function(err, results1) {
                        if (err) {
                            console.log('查询失败', err)
                        } else {
                            res.render('index', { date: results, moment: require('moment'), page: page, results1: results1,param:param }); //要先查询到再进行遍历，而不是添加之后再遍历，所以数据传出来是查询出结果之后！

                        }
                    })
                    // console.log(results);
                }
            })

        }
    })
});

router.get('/show/:id', function(req, res) {
    var where='';
    if(req.query.tid){
        where = ' where tid='+req.query.tid; 
        date=null;  
    }
    connection.query('select * from content where id=' + req.params.id, function(error, result) {
        if (error) {
            console.log('查询失败', error)
        } else {
            connection.query('select * from types',function(error,results1){
                   if(error){
                      console.log('查询失败',error)
                   }else{
                     connection.query('select * from content' +where,function(error,results2){
                          if(error){
                              console.log('查询失败',error)
                          }else{
             res.render('show', { date: result[0], moment: require('moment'),result:results1,results2:results2});
                          }
                     })
                      
                   }
            })
        }
    })
})


router.get('/reg', function(req, res) {
    res.render('reg');
})
router.post('/reg', function(req, res) {
    req.body.password = require('../common/common.js').md5(req.body.password);
    req.body.addtime = Math.floor(new Date().getTime() / 1000)
    connection.query('insert into users (username,password,phone,addtime)values("' + req.body.username + '","' + req.body.password + '","' + req.body.phone + '","' + req.body.addtime + '")', function(error, results) {
        if (error) {
            console.log('添加数据失败', error);
        } else {
            res.redirect('/login');
        }
    })
})

router.get('/login', function(req, res) {
    res.render('login', { error: req.flash('error').toString() });
})
router.post('/login', function(req, res) {
    req.body.password = require('../common/common.js').md5(req.body.password);
    connection.query('select * from users where username="' + req.body.username + '"and password="' + req.body.password + '"', function(error, results) {
        if (error) {
            console.log('查勋失败', error);
            // res.redirect('back');
        } else {
            // console.log(results);
            if (results.length === 0) {
                req.flash('error', '用户名和密码错误')
                res.redirect('back')
            } else {
                req.session.admin = results[0];
                res.redirect('/users');
            }

        }
    })
})
router.get('/logout', function(req, res) {
    req.session.admin = null;
    res.redirect('/login');
})
router.post('/check', function(req, res) {
    connection.query('select * from users where username="' + req.body.username + '"', function(error, results) {
        if (error) {
            console.log('查询数据失败')
        } else {
            if (results.length === 0) {
                res.json({ "success": 0 })
            } else {
                res.json({ "success": 1, "more": ['李宁', '李宁2', '李宁3'] });
            }
        }
    })
    // console.log(req.body);
})
// 发送手机短信
router.post('/msg', function(req, res) {
    // 接收手机号码，生成随机的验证码，将验证码发送给短信运营商发送
    // req.body.phone
    console.log(req.body);

    // 4位
    function rand(m, n) {
        return Math.floor(Math.random() * (n - m + 1) + m);
    }
    // 获取随机数
    var code = rand(1000, 9999);
    // 将验证码保存到session中，长久保存，方便做验证码的判断
    req.session.code = code;

    // 通过阿里大于发送短信
    TopClient = require('../common/alidayu/topClient.js').TopClient;

    // 这是我个人的阿里大于账户和密钥（不要修改直接用）
    var client = new TopClient({    
        'appkey': '23341634',
            'appsecret': '7e30a1c2c254c9a109f283067e8d5e18',
            'REST_URL': 'http://gw.api.taobao.com/router/rest'
    }); 
    client.execute('alibaba.aliqin.fc.sms.num.send', {    
        'extend': '123456',
            'sms_type': 'normal',
        // 签名：本网站的标识符，不能改变
        // 短信模板中的code参数
            'sms_free_sign_name': '俊哥技术小站',
            'sms_param': '{\"code\":\"' + code + '\"}',
            'rec_num': req.body.phone,
        // 短信模板的编号
            'sms_template_code': 'SMS_105890028'
    }, function(error, response) {    
        if (error) {
            // console.log('发送失败',error);
            res.json({ success: 0 });
        } else {
            // console.log('发送成功');
            res.json({ success: 1 });
        }
    })
})

var multer = require('multer');
var upload = multer({
    dest: 'public/upload/articles'
})

// 专门处理文章文件上传
router.post('/upload', upload.single('editormd-image-file'), function(req, res) {
    // 给文件设置后缀名
    var fs = require('fs');
    var path = require('path');

    // 拼接老名字和新名字，使用rename进行改名
    var oldname = path.join('public/upload/articles', req.file.filename);
    // 补充文件的后缀名
    var filename = req.file.filename + path.extname(req.file.originalname);
    var newname = path.join('public/upload/articles', filename);

    fs.rename(oldname, newname, function(error) {
        if (error) {
            res.json({ success: 0, message: '上传失败', url: '' });
        } else {
            var newpath = path.join('/upload/articles', filename);
            res.json({ success: 1, message: '上传成功', url: newpath })
        }
    })
})
router.post('/zan',function(req,res){
     connection.query('update content set zannum=zannum+1 where id='+req.body.id,function(error,results0){
          if(error){
             res.json({success:0})
          }else{
             // console.log(results0[0]);
             connection.query('select * from content where id='+req.body.id,function(error,result3){
                  if(error){
                     console.log('查询失败')
                  }else{
                    var desc=result3[0];
                    desc.zannum=result3[0].zannum;
                    res.json({success:1,desc:desc});                      
                  }  
             })         
          }
     })
})
module.exports = router;