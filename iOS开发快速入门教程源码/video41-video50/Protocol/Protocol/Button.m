//
//  Button.m
//  Protocol
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Button.h"

@implementation Button


- (void)dealloc {
    [_delegate release];
    
    [super dealloc];
}

- (void)click {
    // 如果_delegate实现了onClick:这个方法
    if ( [_delegate respondsToSelector:@selector(onClick:)] ) {
        // 按钮被点击了，就应该通知监听器.并且告诉监听器哪个按钮被点击了
        [_delegate onClick:self];
    } else {
        NSLog(@"监听器并没有实现onClick:方法");
    }
}
@end
