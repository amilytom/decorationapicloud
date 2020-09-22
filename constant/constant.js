// 定义一个对象
const obj = {
  // 默认请求成功
  DEFAULT_SUCCESS: {
    code: 10000,
    msg: "请求成功",
  },
  // 默认请求失败
  DEFAULT_ERROR: {
    code: 188,
    msg: "请求失败-系统错误",
  },
  // 定义错误返回-缺少必要参数
  LACK: {
    code: 199,
    msg: "缺少必要参数",
  },
  // 定义错误返回-Token验证失败
  TOKEN_ERROR: {
    code: 401,
    msg: "Token验证失败",
  },
  // 定义错误返回-用户名或密码错误
  LOGIN_ERROR: {
    code: 101,
    msg: "用户名或密码错误",
  },
  // 定义错误返回-文章信息不存在
  ARTICLE_NOT_EXSIT: {
    code: 102,
    msg: "文章信息不存在",
  },
  // 定义错误返回-分类信息不存在
  CATE_NOT_EXSIT: {
    code: 103,
    msg: "分类信息不存在",
  },
  // 定义错误返回-案例信息不存在
  CASE_NOT_EXSIT: {
    code: 104,
    msg: "案例信息不存在",
  },
  // 定义错误返回-活动信息不存在
  EVENT_NOT_EXSIT: {
    code: 105,
    msg: "活动信息不存在",
  },
  // 定义错误返回-管理员信息不存在
  ADMIN_NOT_EXSIT: {
    code: 106,
    msg: "管理员信息不存在",
  },
  // 定义错误返回-预约信息不存在
  ORDER_NOT_EXSIT: {
    code: 107,
    msg: "预约信息不存在",
  },
  // 定义错误返回-企业信息不存在
  COMPANY_INFO_NOT_EXSIT: {
    code: 108,
    msg: "企业信息不存在",
  },
  // 定义错误返回-保存文件失败
  SAVE_FILE_ERROR: {
    code: 109,
    msg: "保存文件失败",
  },
};
// 导出对象，给其他方法调用
module.exports = obj;
