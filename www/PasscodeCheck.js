
var exec = require("cordova/exec");

var PasscodeCheck = function () {
    this.name = "PasscodeCheck";
};

PasscodeCheck.prototype.isDevicePasscodeSet = function (successCallback, errorCallback) { 
    exec(successCallback, errorCallback, "PasscodeCheck", "isDevicePasscodeSet");
};

module.exports = new PasscodeCheck();
