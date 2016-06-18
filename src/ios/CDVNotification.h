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

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface CDVNotification : CDVPlugin <UIAlertViewDelegate>{}

  // 公共的方法
  -(void)imageShow:(CDVInvokedUrlCommand *)command;//图片轮播
  -(void)isDebug:(CDVInvokedUrlCommand *)command; //是否生产环境
  -(void)focusWeChat:(CDVInvokedUrlCommand *)command; //关注微信公众号
  -(void)getPostUrl:(CDVInvokedUrlCommand *)command; //获取服务器的域名端口
  -(void)doShare:(CDVInvokedUrlCommand *)command; //第三方分享 weixin/weibo/friend/all
  -(void)getUser:(CDVInvokedUrlCommand *)command; //获得当前用户的信息
  -(void)goLogin:(CDVInvokedUrlCommand *)command; //去登录页面
  -(void)getToken:(CDVInvokedUrlCommand *)command;//获得当前用户的token
  -(void)showToast:(CDVInvokedUrlCommand *)command;//客户端的Toast 
  -(void)getPageInit:(CDVInvokedUrlCommand *)command; //获取页面的基本信息



 //  资讯详情页
  -(void)getArticleDetail:(CDVInvokedUrlCommand *)command;//获取资讯详情id
  -(void)commentsList:(CDVInvokedUrlCommand *)command; //跳转资讯评论列表
  -(void)topicDetail:(CDVInvokedUrlCommand *)command; //跳转点师详情
  -(void)refreshCommentNum:(CDVInvokedUrlCommand *)command; //通知移动端跟新评论数量

 // 动态详情页
  -(void)getDynamicDetail:(CDVInvokedUrlCommand *)command;//get dynamicDatail page baseNews
  -(void)goDynamicCommentList:(CDVInvokedUrlCommand *)command;//native skip dynamicComnentList activity
  -(void)commitDynamicLike:(CDVInvokedUrlCommand *)command;//commit dynamic like counts and isLike
  -(void)commitDynamicComment:(CDVInvokedUrlCommand *)command;//commit dynamic comments counts
 
 //益达详情
  -(void)ydDoPay:(CDVInvokedUrlCommand *)command; //益达详情去支付
  -(void)goTeacherDetail:(CDVInvokedUrlCommand *)command; //跳转点事详情页
  -(void)sendYdPageNews:(CDVInvokedUrlCommand *)command; //发送益达详情页的基本信息



@end
