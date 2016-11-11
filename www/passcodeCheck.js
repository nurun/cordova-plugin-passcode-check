
var exec = require("cordova/exec");

var PasscodeCheck = function () {
    this.name = "PasscodeCheck";
};

PasscodeCheck.prototype.devicePasscodeIsSet = function (successCallback, errorCallback, text) {
	 if (!text) {
        text = "Verifying device passcode exists.";
    }
    exec(successCallback, errorCallback, "PasscodeCheck", "devicePasscodeIsSet", [text]);
};


module.exports = new PasscodeCheck();
