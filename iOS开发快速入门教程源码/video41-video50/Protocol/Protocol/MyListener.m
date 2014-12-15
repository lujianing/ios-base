//
//  MyListener.m
//  Protocol
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "MyListener.h"
#import "Button.h"

@implementation MyListener
- (void)onClick {
    NSLog(@"MyListener已经监听到按钮被点击了");
}

- (void)onClick:(Button *)btn {
    NSLog(@"MyListener已经监听到按钮-%@被点击了", btn);
}
@end
