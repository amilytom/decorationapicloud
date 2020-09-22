// 引入Express对象
var express = require("express");
// 引入路由对象
var router = express.Router();
// 引入我们自定义的controller
const CaseController = require("../controllers/case");
// 定义案例列表路由，GET请求
router.get("/", CaseController.list);
// 定义单条案例路由，GET请求
router.get("/:id", CaseController.info);
// 定义添加案例路由，POST请求
router.post("/", CaseController.add);
// 定义修改案例路由，PUT请求
router.put("/", CaseController.update);
// 定义删除案例路由，DELETE请求
router.delete("/", CaseController.remove);
// 导出路由，供app.js文件调用
module.exports = router;
