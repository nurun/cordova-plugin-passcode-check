//
//  PasscodeCheck.m
//  Copyright (c) 2016 R.E. Moore Jr. - @remoorejr
//

#import "PasscodeCheck.h"
#import <LocalAuthentication/LocalAuthentication.h>

@implementation PasscodeCheck

- (void) isDevicePasscodeSet:(CDVInvokedUrlCommand*)command;
{
	[self.commandDelegate runInBackground:^{
		__block CDVPluginResult* pluginResult = nil;
		NSError *passcodeError = nil;

		if (NSClassFromString(@"LAContext") != nil) {
			LAContext *laContext = [[LAContext alloc] init];
			if ([laContext canEvaluatePolicy: LAPolicyDeviceOwnerAuthentication error: &passcodeError]) {
				pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:TRUE];
			} else {
				pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsBool:FALSE];
			}
		} else {
			pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:[passcodeError localizedDescription]];
		}
		[self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
	}];
}

@end
