const BaseQuery = require('./common/query.js');
const moment = require('moment');

module.exports = class extends BaseQuery {

  async get_all_product(map = {}) {
    const fieldSQL = 'pid,name,intro,role,time,state,skill,logo,website,create_time';
    const orderSQL = 'pid,name';
    const list = await this.get_all(fieldSQL,orderSQL);
    return list;
  }

  async get_top_product(topId,where={}) {
    const fieldSQL = 'pid,name,intro,role,time,state,skill,logo,website,create_time';
    const orderSQL = 'pid,name';
    const map = think.extend({'pid': {'<': 4}}, where);
    const lists = await this.get_colunm(fieldSQL,orderSQL,map);
    return lists;
  }

  /**
     *
     * @param data
     * @returns {*}
     */
  async updates(data) {
    if (think.isEmpty(data)) {
      return false;
    }
    let res,obj;
    /* 添加或更新数据 */
    if (think.isEmpty(data.pid)) {
      data.create_time = moment(new Date).format("YYYY-MM-DD HH:mm:ss");
      res = await this.add(data);
      if (res) {
        obj = {pid: res, err: 1};// 添加成功
      } else {
        obj = {err: 2};// 新增失败
      }
    } else {
      data.update_time = moment(new Date).format("YYYY-MM-DD HH:mm:ss");
      res = await this.where({pid: data.pid}).update({name : data.name, intro : data.intro});
      if (res) {
        obj = {pid: res, err: 3};// 更新成功
      } else {
        obj = {err: 4};// 更新失败
      }
    }
    return obj;
  }
};
