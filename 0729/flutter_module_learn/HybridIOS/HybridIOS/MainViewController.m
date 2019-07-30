//
//  MainViewController.m
//  HybridIOS
//
//  Created by 李精彪 on 2019/7/28.
//  Copyright © 2019 李精彪. All rights reserved.
//
#import <Flutter/Flutter.h>
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>
#import "MainViewController.h"

@interface MainViewController ()<FlutterStreamHandler>
@property (nonatomic, assign) BOOL isBasicChannel;
@property (weak, nonatomic) IBOutlet UILabel *dartMsgLabel;

@property (weak, nonatomic) IBOutlet UIView *topBG;

@property (strong, nonatomic) FlutterViewController *flutterVC;

@property (strong, nonatomic) FlutterBasicMessageChannel *basicChannel;
@property (strong, nonatomic) FlutterMethodChannel *methodChannel;
@property (strong, nonatomic) FlutterEventChannel *eventChannel;

@property (copy, nonatomic) FlutterEventSink eventSink;

@property (weak, nonatomic) IBOutlet UILabel *showLabel;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.isBasicChannel = YES;
    _flutterVC = [[FlutterViewController alloc]init];
    [GeneratedPluginRegistrant registerWithRegistry:_flutterVC];
    [_flutterVC setInitialRoute:self.routeMsg];
    [self addChildViewController:_flutterVC];
    [self.view addSubview:_flutterVC.view];
    _flutterVC.view.frame = CGRectMake(0, _topBG.frame.size.height, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-_topBG.frame.size.height);
    [_flutterVC didMoveToParentViewController:self];
    
    [self initChannel];
    
}

- (IBAction)backAction:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)switchValueChangedAction:(UISwitch *)sender {
    self.isBasicChannel = !sender.on;
}


- (IBAction)editingChangedAction:(UITextField *)sender {
    [self sendToDart:sender.text];
}

- (void)sendToDart:(NSString *)msg {
    if (self.isBasicChannel) {
        [self.basicChannel sendMessage:msg reply:^(id  _Nullable reply) {
            if (reply) {
                [self showMsg:reply];
            }
        }];
    }else {
        if (self.eventSink) {
            self.eventSink(msg);
        }
        
    }
}


- (void)initChannel {
    [self initBasicMessageChannel];
    [self initMethodChannel];
    [self initEventChannel];
}

- (void)initBasicMessageChannel{
    self.basicChannel = [FlutterBasicMessageChannel messageChannelWithName:@"BasicMessageChannelPlugin" binaryMessenger:_flutterVC codec:[FlutterStringCodec sharedInstance]];
    __weak typeof(self) weakSelf = self;
    [self.basicChannel setMessageHandler:^(id  _Nullable message, FlutterReply  _Nonnull callback) {
        callback([NSString stringWithFormat:@"BasicMessageChannel收到：%@",message]);
        [weakSelf showMsg:message];
    }];
}

- (void)initMethodChannel {
    self.methodChannel = [FlutterMethodChannel methodChannelWithName:@"MethodChannelPlugin" binaryMessenger:self.flutterVC];
    __weak typeof(self) weakSelf = self;
    [self.methodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        if ([call.method isEqualToString:@"send"]) {
            result([NSString stringWithFormat:@"MethodChannelPlugin收到：%@",call.arguments]);
            [weakSelf showMsg:call.arguments];
        }
    }];
}

- (void)initEventChannel {
    self.eventChannel = [FlutterEventChannel eventChannelWithName:@"EventChannelPlugin" binaryMessenger:self.flutterVC];
    [self.eventChannel setStreamHandler:self];
}

- (void)showMsg:(NSString *)dartMsg {
    self.showLabel.text = [NSString stringWithFormat:@"来自Dart：%@",dartMsg];
}



- (FlutterError* _Nullable)onListenWithArguments:(id _Nullable)arguments
                                       eventSink:(FlutterEventSink)events {
    self.eventSink = events;
    return nil;
    
}
- (FlutterError* _Nullable)onCancelWithArguments:(id _Nullable)arguments {
    self.eventSink = nil;
    return nil;
}
@end
