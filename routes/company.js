// 引入Express对象
var express = require("express");
// 引入路由对象
var router = express.Router();
// 引入我们自定义的controller
const CompanyController = require("../controllers/company");
// 定义获取企业信息路由，GET请求
router.get("/", CompanyController.info);
// 定义修改企业信息路由，PUT请求
router.put("/", CompanyController.update);
// 导出路由，供app.js文件调用
module.exports = router;
