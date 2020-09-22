// 引入Express对象
var express = require("express");
// 引入路由对象
var router = express.Router();
// 引入我们自定义的controller
const EventController = require("../controllers/event");
// 定义活动列表路由，GET请求
router.get("/", EventController.list);
// 定义单条活动路由，GET请求
router.get("/:id", EventController.info);
// 定义添加活动路由，POST请求
router.post("/", EventController.add);
// 定义修改活动路由，PUT请求
router.put("/", EventController.update);
// 定义删除活动路由，DELETE请求
router.delete("/", EventController.remove);
// 导出路由，供app.js文件调用
module.exports = router;
