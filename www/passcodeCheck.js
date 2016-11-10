
var exec = require("cordova/exec");

var PasscodeCheck = function () {
    this.name = "PasscodeCheck";
};

PasscodeCheck.prototype.devicePasscodeIsSet = function (successCallback, errorCallback) {
    exec(successCallback, errorCallback, "PasscodeCheck", "devicePasscodeIsSet");
};


module.exports = new PasscodeCheck();
