const BaseRest = require('../common/rest.js');

module.exports = class extends BaseRest {
   /**
   * @returns {Promise.<*>}
   */
  async getAction() {
    let data;
    return this.success(data);
  }
  async postAction() {
    console.log("receive data " + JSON.stringify(this.post().file) + JSON.stringify(this.post().fileName));
    const res = {
        "uploaded": 1,
        "fileName": "cinemaloop_whole.png",
        "url": "/assets/img/cinemaloop_whole.png"
    }
    return this.success(res);
  }
};
