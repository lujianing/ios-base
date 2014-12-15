//
//  Study.h
//  Protocol补充
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Study <NSObject>
// 默认就是@required
- (void)test3;

// @required表示必须实现的方法
// 虽然字面上说是必须实现，但是编译器并不强求某个类进行实现
@required
- (void)test;

- (void)test1;

// @optional表示可选（可实现\也可不实现）
@optional
- (void)test2;
@end
