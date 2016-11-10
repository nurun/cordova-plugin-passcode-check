//
//  PasscodeCheck.m
//  Copyright (c) 2016 R.E. Moore Jr. - @remoorejr
//

#import "PasscodeCheck.h"

#import <LocalAuthentication/LocalAuthentication.h>

@implementation PasscodeCheck

- (void) devicePasscodeIsSet:(CDVInvokedUrlCommand*)command;
{
    NSString *text = [command.arguments objectAtIndex:0];

    __block CDVPluginResult* pluginResult = nil;

    if (NSClassFromString(@"LAContext") != nil)
    {
        LAContext *laContext = [[LAContext alloc] init];
        NSError *passcodeError = nil;

        if ([laContext().canEvaluatePolicy(.DeviceOwnerAuthentication, error: &passcodeError]) 
        {   
            [laContext().canEvaluatePolicy(.DeviceOwnerAuthentication, error: &passcodeError:^(BOOL success, NSError *error)
            if (success) {
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
            } else {
                NSString *errorCode =nil;
                switch (error.code) { 
                         case LAErrorSystemCancel:
                             errorCode = @"systemCancel";
                             break;
                         case LAErrorPasscodeNotSet:
                             errorCode = @"passcodeNotSet";
                             break;
                         default:
                             errorCode = @"unknown";
                             break;
                }
                pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:errorCode];
            }    
        ]};
    }
     else
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
     [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
