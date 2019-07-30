//
//  RootViewController.m
//  HybridIOS
//
//  Created by 李精彪 on 2019/7/28.
//  Copyright © 2019 李精彪. All rights reserved.
//
#import "MainViewController.h"
#import <Flutter/Flutter.h>
#import <FlutterPluginRegistrant/GeneratedPluginRegistrant.h>
#import "RootViewController.h"


@interface RootViewController ()
@property (nonatomic, strong) UITextField *textField;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    _textField = [[UITextField alloc]initWithFrame:CGRectMake(15, 100, [UIScreen mainScreen].bounds.size.width-30, 50)];
    _textField.backgroundColor = [UIColor lightGrayColor];
    _textField.textColor = [UIColor blackColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"GO Hybird Page" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blueColor];
    btn.frame = CGRectMake(0, 180, [UIScreen mainScreen].bounds.size.width, 50);
    [btn addTarget:self action:@selector(goFlutterPage:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_textField];
    [self.view addSubview:btn];
}
- (void)goFlutterPage:(UIButton *)btn {
    MainViewController *main = [[MainViewController alloc]init];
    main.routeMsg = _textField.text;
    [self presentViewController:main animated:YES completion:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"1111");
    return;
    FlutterViewController *flutterVC = [FlutterViewController new];
    [GeneratedPluginRegistrant registerWithRegistry:flutterVC];
    [flutterVC setInitialRoute:@"来自Native"];
    [self presentViewController:flutterVC animated:YES completion:nil];
}



@end
