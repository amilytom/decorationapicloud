// 引入Express对象
var express = require("express");
// 引入路由对象
var router = express.Router();
// 引入我们自定义的controller
const OrderController = require("../controllers/order");
// 定义预约列表路由，GET请求
router.get("/", OrderController.list);
// 定义修改预约状态路由，PUT请求
router.put("/status", OrderController.updateStatus);
// 导出路由，供app.js文件调用
module.exports = router;
