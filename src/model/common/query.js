const moment = require('moment');

module.exports = class extends think.Model {
  /**
     * 获取分类详细信息
     * @param  {milit} id 分类ID或者标识
     * @param  {string} field 查询字段
     * @return {array} 分类信息
     */
  async info(id, field) {
    field = think.isEmpty(field) || '';
    const map = {};
    if (think.isNumberString(id)) {
      map.id = id;
    } else {
      map.name = id;
    }
    return await this.field(field).where(map).find();
  }

  async get_all(fieldSQL,orderSQL,map = {}) {
    const list = await this.get_colunm(fieldSQL,orderSQL,map = {});
    if (think.isEmpty(map)) {
      return list;
    } else {
      return think._.filter(list, map);
    }
    return list;
  }

  async get_colunm(fieldSQL,orderSQL,map = {}) {
    const lists = await this.where(map).field(fieldSQL).order(orderSQL).select();
    for (const v of lists) {
       if (v.create_time){
        v.create_time = moment(v.create_time).format("YYYY-MM-DD HH:mm:ss");
      }
    }
    return lists;
  }
}
