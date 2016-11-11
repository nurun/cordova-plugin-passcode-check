//
//  PasscodeCheck.h
//  Copyright (c) 2016 R.E. Moore Jr. & Alpha Software, Inc.
//  Twitter: @remoorejr
//  www.alphasoftware.com
//

#import <Cordova/CDVPlugin.h>

@interface PasscodeCheck : CDVPlugin

- (void) isDevicePasscodeSet:(CDVInvokedUrlCommand*)command;

@end
