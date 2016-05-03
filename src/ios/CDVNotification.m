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

/**
* 
*  公用方法
*
*/
-(void)imageShow:(CDVInvokedUrlCommand *)command  // 图片轮播
{
   NSArray *arguments = command.arguments;
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)isDebug:(CDVInvokedUrlCommand *)command  // 是否生产环境
{
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"true"];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)focusWeChat:(CDVInvokedUrlCommand *)command //  关注微信公众号
{
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success"];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)getPostUrl:(CDVInvokedUrlCommand *)command //获取服务器的域名端口
{
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"http://test.zhid58.com:8080"];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)doShare:(CDVInvokedUrlCommand *)command //第三方分享 weixin/weibo/friend/all
{
   NSArray *arguments = command.arguments;
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)getUser:(CDVInvokedUrlCommand *)command //获得当前用户的信息
{
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"user"];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)goLogin:(CDVInvokedUrlCommand *)command //去登录页面
{
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"login"];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)getToken:(CDVInvokedUrlCommand *)command //获得当前用户的token
{
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"heSss44Wj1Aj5T+yrc9S0xF9V21AY82JzpII0y6d1t4/DmatPlT5DbnTspbF96h4"];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)showToast:(CDVInvokedUrlCommand *)command //客户端的Toast 
{
   NSArray *arguments = command.arguments;
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

/**
* 
*资讯详情页
*
*/
-(void)getArticleDetail:(CDVInvokedUrlCommand *)command //获取资讯详情id
{
  NSArray *arguments = command.arguments;
  CDVPluginResult* result;
  result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)commentsList:(CDVInvokedUrlCommand *)command // 跳转资讯评论列表
{
   NSArray *arguments = command.arguments;
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)topicDetail:(CDVInvokedUrlCommand *)command // 跳转点师详情
{
    NSArray *arguments = command.arguments;
    CDVPluginResult* result;
    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)refreshCommentNum:(CDVInvokedUrlCommand *)command //  通知移动端跟新评论数量
{
   NSArray *arguments = command.arguments;
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}


/**
* 
* 爆料详情页
*
*/
-(void)getBrokeDetailId:(CDVInvokedUrlCommand *)command //获取爆料详情id
{
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"244D8A86-A1BD-4C6A-8601-2A4874CA0DB5"];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)brokeReply:(CDVInvokedUrlCommand *)command //回复爆料评论  参数 爆料id
{
   NSArray *arguments = command.arguments;
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)getBrokeDetail:(CDVInvokedUrlCommand *)command //获取爆料页面相关信息
{
  NSArray *arguments = command.arguments;
   CDVPluginResult* result;
   result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
   [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

-(void)startComments:(CDVInvokedUrlCommand *)command //获取爆料页面相关信息
{
  CDVPluginResult* result;
  result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"start"];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}


/**
 *
 * dynamic detail page 
 */
-(void)getDynamicDetail:(CDVInvokedUrlCommand *)command //get dynamicDatail page baseNews
{
  NSArray *arguments = command.arguments;
  CDVPluginResult* result;
  result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}
-(void)goDynamicCommentList:(CDVInvokedUrlCommand *)command //native skip dynamicComnentList activity
{
  NSArray *arguments = command.arguments;
  CDVPluginResult* result;
  result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}
-(void)commitDynamicLike:(CDVInvokedUrlCommand *)command //commit dynamic like count and isLike
{
  NSArray *arguments = command.arguments;
  CDVPluginResult* result;
  result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}
-(void)commitDynamicComment:(CDVInvokedUrlCommand *)command //commit dynamic comments counts
{
  NSArray *arguments = command.arguments;
  CDVPluginResult* result;
  result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arguments.firstObject];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}



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
    }else{
       CDVPluginResult* result;
       result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"error"];
       [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
   }
}

@end
