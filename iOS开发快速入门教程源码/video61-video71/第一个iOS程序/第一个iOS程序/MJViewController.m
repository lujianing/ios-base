//
//  MJViewController.m
//  第一个iOS程序
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "MJViewController.h"

@interface MJViewController ()

@end

@implementation MJViewController

#pragma mark 登录
- (void)login {
    NSString *qqText = _qq.text;
    NSString *pwdText = _pwd.text;
    
    NSLog(@"QQ=%@,密码=%@", qqText, pwdText);
    
    // 暂时理解：叫出键盘的那个视图就是第一个响应者（FirstResponder）
    // resignFirstResponder代表这个视图不想当第一响应者了，于是键盘就会退出
    //[_qq resignFirstResponder];
    //[_pwd resignFirstResponder];
    
    // 如果第一响应者存在于self.view里面，就可以退出键盘
    [self.view endEditing:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
