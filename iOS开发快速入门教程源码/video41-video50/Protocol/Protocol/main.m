//
//  main.m
//  Protocol
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Button.h"
#import "ButtonListener.h"
#import "MyListener.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // 初始化一个按钮
        Button *button = [[[Button alloc] init] autorelease];
        
        // 初始化一个按钮的监听器
//        ButtonListener *listener = [[[ButtonListener alloc] init] autorelease];
        MyListener *listener = [[[MyListener alloc] init] autorelease];
        
        // 设置按钮的监听器
        button.delegate = listener;
        NSLog(@"button:%@", button);
        // 点击按钮
        [button click];
        
        Button *button2 = [[[Button alloc] init] autorelease];
        button2.delegate = listener;
        NSLog(@"button2:%@", button2);
        // 点击button2
        [button2 click];
    }
    return 0;
}

