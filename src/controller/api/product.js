const BaseRest = require('../common/rest.js');

module.exports = class extends BaseRest {
   /**
   * 获取分类信息
   * /api/product 获取全部服务产品信息（树结构）
   * /api/product/1 获取id=1产品信息
   * /api/product/?top=3" 获取top3产品信息
   * @returns {Promise.<*>}
   */
  async getAction() {
    let data;
    const model = this.model('product');
    if (this.id) {
      data = await model.where({pid: this.id}).find();
      return this.success(data);
    }

    const topId = this.get('top') || 0;
    if (topId != 0 && think.isNumberString(topId)) {
      data = await model.get_top_product(topId);
      return this.success(data);
    }

    data = await model.get_all_product();
    return this.success(data);
  }

  async postAction() {
    const data = this.post();
    // console.log(addrole);
    const res = await this.model('product').updates(data);
    switch (res.err) {
      case 1:
        return this.success({name: '新增成功！'});
      case 2:
        return this.fail('新增失败！');
      case 3:
        return this.success({name: '更新成功！'});
      default:
        return this.fail('更新失败！');
    }
  }

};
