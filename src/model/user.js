const BaseQuery = require('./common/query.js');

module.exports = class extends BaseQuery {

  async get_all_user(map = {}) {
    const fieldSQL = 'uid,avatar,name,email,intro,create_time';
    const orderSQL = 'uid,name';
    const list = await this.get_all(fieldSQL,orderSQL);
    return list;
  }
  /**
     * 用户登录认证
     * @param  string  $username 用户名
     * @param  string  $password 用户密码
     * @return integer           登录成功-用户ID，登录失败-错误编号
     */
  async signin(email, password) {
    let map = {};
    map.email = email;

    const user = await this.where(map).find();
    if (!think.isEmpty(user)) {
      if (password === user.password) {
        const userInfo = {
          'uid': user.uid,
          'username': user.name,
          'email': user.email
        };
        return userInfo; // 登录成功，返回用户信息
      } else {
        return -2; // 密码错误
      }
    } else {
      return -1; // 用户不存在或被禁用
    }
  }


};
