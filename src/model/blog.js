const BaseQuery = require('./common/query.js');
const moment = require('moment');

module.exports = class extends BaseQuery {

  async get_all_blog(map = {}) {
    const fieldSQL = 'bid,title,content,type,uname,label,create_time';
    const orderSQL = 'bid,title';
    const list = await this.get_all(fieldSQL,orderSQL);
    return list;
  }

  async get_top_blog(topId,where={}) {
    const fieldSQL = 'bid,title,content,type,uname,label,create_time';
    const orderSQL = 'bid,title';
    const map = think.extend({'bid': {'<': 4}}, where);
    const lists = await this.get_colunm(fieldSQL,orderSQL,map);
    return lists;
  }

  async get_search_blog(searchText){
    const fieldSQL = 'bid,title,content,type,uname,label,create_time';
    const orderSQL = 'bid,title';
    const map = "title like '%"+ searchText + "%'";
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
    if (think.isEmpty(data.bid)) {
      data.create_time = moment(new Date).format("YYYY-MM-DD HH:mm:ss");
      res = await this.add(data);
      if (res) {
        obj = {bid: res, err: 1};// 添加成功
      } else {
        obj = {err: 2};// 新增失败
      }
    } else {
      data.update_time = moment(new Date).format("YYYY-MM-DD HH:mm:ss");
      res = await this.where({bid: data.bid}).update({title : data.title, content : data.content});
      if (res) {
        obj = {bid: res, err: 3};// 更新成功
      } else {
        obj = {err: 4};// 更新失败
      }
    }
    return obj;
  }

}
