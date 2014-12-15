//
//  MJAppDelegate.h
//  第一个iOS程序
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MJViewController;

@interface MJAppDelegate : UIResponder <UIApplicationDelegate>
// strong暂时理解为retain
@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) MJViewController *viewController;

@end
