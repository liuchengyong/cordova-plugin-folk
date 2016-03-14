//
//  CDVFolkMethd.m
//  folk
//
//  Created by 孙虎林 on 16/3/14.
//  Copyright © 2016年 luoteng. All rights reserved.
//

#import "CDVFolkMethd.h"

@implementation CDVFolkMethd


-(void)topicDetail:(CDVInvokedUrlCommand*)command
{
     NSString* callbackId = [command callbackId];
        NSString* name = [[command arguments] objectAtIndex:0];
        NSString* msg = [NSString stringWithFormat: @"Hello, %@", name];

        CDVPluginResult* result = [CDVPluginResult
                                   resultWithStatus:CDVCommandStatus_OK
                                   messageAsString:msg];

        [self success:result callbackId:callbackId];
}



@end
