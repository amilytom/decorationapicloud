var createError = require("http-errors");
var express = require("express");
var path = require("path");
var cookieParser = require("cookie-parser");
var logger = require("morgan");

var indexRouter = require("./routes/index");
// 引入预约管理模块路由文件
var orderRouter = require("./routes/order");
// 引入活动管理模块路由文件
var eventRouter = require("./routes/event");
// 引入分类管理模块路由文件
var cateRouter = require("./routes/cate");
// 引入案例管理模块路由文件
var caseRouter = require("./routes/case");
// 引入文章管理模块路由文件
var articleRouter = require("./routes/article");
// 引入企业信息管理模块路由文件
var CompanyRouter = require("./routes/company");
// 引入管理员管理模块路由文件
var adminRouter = require("./routes/admin");
// 引入Token验证中间件
const verifyMiddleware = require("./controllers/verify");

var app = express();

app.set("views", path.join(__dirname, "views"));
app.engine("html", require("express-art-template"));
app.set("view engine", "html");

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

app.use("/", indexRouter);

// 配置预约管理模块路由path，添加Token验证中间件
// app.use('/order', verifyMiddleware.verifyToken, orderRouter);
app.use("/order", orderRouter);
// 配置活动管理模块路由path，添加Token验证中间件
app.use("/event", eventRouter);
// 配置分类管理模块路由path，添加Token验证中间件
app.use("/cate", cateRouter);
// 配置案例管理模块路由path，添加Token验证中间件
app.use("/case", caseRouter);
// 配置文章管理模块路由path，添加Token验证中间件
app.use("/article", articleRouter);
// 配置企业信息管理模块路由path，添加Token验证中间件
app.use("/company", CompanyRouter);
// 配置管理员管理模块路由path，添加Token验证中间件
app.use("/admin", adminRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get("env") === "development" ? err : {};
  console.log(err.message);

  // render the error page
  res.status(err.status || 500);
  res.json({
    code: err.status || 500,
  });
});

module.exports = app;
