//
//  MJViewController.h
//  第一个iOS程序
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MJViewController : UIViewController

// UI元素一般用assign即可
@property (nonatomic, assign) IBOutlet UITextField *qq;
@property (nonatomic, assign) IBOutlet UITextField *pwd;

// IBAction其实就是void
// IBAction可以让方法名，显示到xib文件右击列表中
- (IBAction)login;

@end
