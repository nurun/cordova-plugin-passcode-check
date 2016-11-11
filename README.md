## Passcode Check Plugin for Apache Cordova

Cordova Plugin to verify that a passcode has been set on the device. Requires iOS 9 or greater.

## Install

#### Latest version from GitHub

```
cordova plugin add https://github.com/remoorejr/cordova-plugin-passcode-check.git
```

## Usage

You **do not** need to reference any JavaScript, the Cordova plugin architecture will add a PasscodeCheck object to your root automatically when you build.

Ensure you use the plugin after your deviceready event has been fired.

### Check if the passcode is set

Pass the following arguments to the `isDevicePasscodeSet()` function

1. Success callback (called if device passcode is set with value of true)
2. Failure callback (called if the passcode is not set, with a value of false or on error or if the device does not support the LocalAuthentication framework)


```
PasscodeCheck.isDevicePasscodeSet(successCallback, failureCallback);
```

## Platforms

iOS 9+

## License

MIT License
Copyright (c) 2016, R.E. Moore Jr. & Alpha Software Corp.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
