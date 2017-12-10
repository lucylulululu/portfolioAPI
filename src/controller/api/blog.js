const BaseRest = require('../common/rest.js');

module.exports = class extends BaseRest {
   /**
   * 获取分类信息
   * /api/blog 获取全部文章信息（树结构）
   * /api/blog/1 获取文章id为1的信息
   * /api/blog/?top=3 获取top3文章的信息
   * /api/blog/?searchText='' 获取收索文章的信息
   * @returns {Promise.<*>}
   */
  async getAction() {
    let data;
    const model = this.model('blog');
    if (this.id) {
      data = await model.where({bid: this.id}).find();
      return this.success(data);
    }

    const searchText = this.get('searchText');
    if(searchText) {
      data = await model.get_search_blog(searchText);
      return this.success(data);
    }

    const topId = this.get('top') || 0;
    if (topId != 0 && think.isNumberString(topId)) {
      data = await model.get_top_blog(topId);
      return this.success(data);
    }

    data = await model.get_all_blog();
    return this.success(data);
  }
  async postAction() {
    console.log(" receive data " + this.post());
    const data = this.post();
    const res = await this.model('blog').updates(data);
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
