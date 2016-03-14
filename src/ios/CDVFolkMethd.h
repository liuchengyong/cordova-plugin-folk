#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioServices.h>
#import <Cordova/CDVPlugin.h>

@interface CDVFolkMethd : CDVPlugin <UIAlertViewDelegate>{}

- (void)alert:(CDVInvokedUrlCommand*)command;
- (void)confirm:(CDVInvokedUrlCommand*)command;
- (void)prompt:(CDVInvokedUrlCommand*)command;
- (void)beep:(CDVInvokedUrlCommand*)command;

@end

@interface CDVAlertView : UIAlertView {}
@property (nonatomic, copy) NSString* callbackId;

@end