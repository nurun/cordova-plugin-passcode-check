//
//  PasscodeCheck.h
//  Copyright (c) 2016 R.E. Moore Jr. - @remoorejr
//

#import <Cordova/CDVPlugin.h>

@interface PasscodeCheck : CDVPlugin

- (void) devicePasscodeIsSet:(CDVInvokedUrlCommand*)command;

@end