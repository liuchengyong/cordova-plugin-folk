//
//  CDVFolkMethd.m
//  folk
//
//  Created by 孙虎林 on 16/3/14.
//  Copyright © 2016年 luoteng. All rights reserved.
//

#import "CDVFolkMethd.h"

@implementation CDVFolkMethd

-(void) echo:(CDVInvokedUrlCommand *) command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];
    if (echo != nil && [echo length] > 0)
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    }
    else
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

//线程处理
- (void)myPluginMethod:(CDVInvokedUrlCommand*)command
{
    // Check command.arguments here.
    [self.commandDelegate runInBackground:^{
        NSString* payload = nil;
        // Some blocking logic...
        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
        // The sendPluginResult method is thread-safe.
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }];
}







@end
