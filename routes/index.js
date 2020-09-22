// 引入Express对象
var express = require("express");
// 引入路由对象
var router = express.Router();
// 引入multer模块
const multer = require("multer");
// 创建文件上传中间件
const uploadMiddleware = multer();
// 引入我们自定义的controller
const IndexController = require("../controllers/index");
// 引入Token验证中间件
const verifyMiddleware = require("../controllers/verify");
// 定义首页路由，GET请求
router.get("/", function (req, res, next) {
  res.render("index", { title: "Express" });
});
// 定义登录路由，POST请求
router.post("/login", IndexController.login);
// 定义上传图片路由，POST请求
router.post("/upload", uploadMiddleware.single("img"), IndexController.upload);
// 导出路由，供app.js文件调用
module.exports = router;
