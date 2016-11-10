## Passcode Check Plugin for Apache Cordova

Cordova Plugin to verify that a passcode has been set on the device

**Important:** You must target a real device when building. If you target the simulator, the build will fail.

## Install

#### Latest published version on npm (with Cordova CLI >= 5.0.0)

```
cordova plugin add cordova-plugin-passcode-check
```

#### Latest version from GitHub

```
cordova plugin add https://github.com/remoorejr/cordova-plugin-passcode-check.git
```

## Usage

You **do not** need to reference any JavaScript, the Cordova plugin architecture will add a PasscodeCheck object to your root automatically when you build.

Ensure you use the plugin after your deviceready event has been fired.

### Check if the passcode is set

Pass the following arguments to the `devicePasscodeIsSet()` function

1. Success callback (called if devicePasscodeIsSet is set returns)
2. Failure callback (called on error or if the device does not support the LocalAuthentication framework)


```
PasscodeCheck.devicePasscodeIsSet(successCallback, failureCallback);
```

## Platforms

iOS 9+

## License

[MIT License](http://ilee.mit-license.org)
