//
//  Button.h
//  block
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Button;

typedef void (^ButtonBlock) (Button *);

@interface Button : NSObject

@property (nonatomic, assign) ButtonBlock block;

// 模拟按钮点击
- (void)click;

@end
