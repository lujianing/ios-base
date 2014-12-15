//
//  Button.h
//  Protocol
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Button;

// <>代表实现某个协议
@protocol ButtonDelegate <NSObject>
- (void)onClick:(Button *)btn;
@end


@interface Button : NSObject

// delegate就是按钮的监听器
@property (nonatomic, retain) id<ButtonDelegate> delegate;

// 点击按钮
- (void)click;
@end

