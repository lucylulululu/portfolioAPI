const BaseRest = require('../common/rest.js');
const nodemailer  = require("nodemailer");

module.exports = class extends BaseRest {

  async postAction() {

    const subject = this.post("name");
    const email = this.post("email");
    const note = this.post("note");

    let smtpConfig = {
          host: 'smtp.sina.com',
          secureConnection: true, // 使用SSL方式（安全方式，防止被窃取信息）
          auth : {
              user : '18189872590@sina.cn',
              pass : '*Aa6682052'
          }
      };

   let transporter = nodemailer.createTransport(smtpConfig);

    var message = {
       from: '18189872590@sina.cn',
       to: '18189872590@sina.cn',
       subject: subject,
       html: note
    };

    transporter.sendMail(message,function(err, res) {
      console.log(" err" + err + " : " + JSON.stringify(res));
      if(!err) {
        res = {
                "errno": 0,
                "errmsg": "send email successfully"
              };
        console.log(" update success : " + JSON.stringify(res));
        return this.success(res);
      }
      res = {msg: 'send email fail', err: 0};
      console.log(" update fail : " + res);
      return this.fail('send email fail');
      });
  }
};
