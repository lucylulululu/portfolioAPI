const BaseRest = require('../common/rest.js');

module.exports = class extends BaseRest {
   /**
   * 获取分类信息
   * /api/user 获取全部用户信息（树结构）
   * /api/user/1 获取用户id为1的信息
   * @returns {Promise.<*>}
   */
  async getAction() {
    let data;
    const model = this.model('user');
    if (this.id) {
      data = await model.where({uid: this.id}).find();
      return this.success(data);
    }
    data = await model.get_all_user();
    return this.success(data);
  }

  async postAction() {
    const email = this.post('email');
    let password = this.post('password');
    password = encryptPassword(password);
    console.log(" password " + password);
    const res = await this.model('user').signin(email, password);

    if (res.uid > 0) {
      console.log("return success");
      return this.success(res, '登录成功');
    } else { // 登录失败
      let fail;
      switch (res) {
        case -1:
          fail = '用户不存在或被禁用';
          break; // 系统级别禁用
        case -2:
          fail = '密码错误';
          break;
        default:
          fail = '未知错误';
          break; // 0-接口参数错误（调试阶段使用）
      }
      return this.fail(res, fail);
    }
  }

};
