//
//  ButtonListener.h
//  Protocol
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

// 对协议进行提前声明，跟@class的用途是一致的
@protocol ButtonDelegate;

@interface ButtonListener : NSObject <ButtonDelegate>

@end
