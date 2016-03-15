/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#import "CDVNotification.h"

#define DIALOG_TYPE_ALERT @"alert"
#define DIALOG_TYPE_PROMPT @"prompt"

static void soundCompletionCallback(SystemSoundID ssid, void* data);
static NSMutableArray *alertList = nil;

@implementation CDVNotification
    -(void)testFolk:(CDVInvokedUrlCommand *)command
    {
        NSString *methedName = command.methodName;
        NSArray *arguments = command.arguments;

        if ([methedName isEqualToString:@"testFolk"]) {
            CDVPluginResult* result;
            if (arguments.count > 0) {
                result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
            } else {
                result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"error"];
            }
            [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
        }else if([methedName isEqualToString:@"topicDetail"]) {
            CDVPluginResult* result;
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
            [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
       }else if([methedName isEqualToString:@"articleId"]) {
            CDVPluginResult* result;
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"05654BA6-873D-48E0-BBC1-C60378503A81"];
            [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
       }else if([methedName isEqualToString:@"imageShow"]) {
            CDVPluginResult* result;
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
            [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
       }else if([methedName isEqualToString:@"isDebug"]) {
            CDVPluginResult* result;
            result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"true"];
            [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
       }else{
           CDVPluginResult* result;
           result = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"error"];
           [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
       }
    }

@end
