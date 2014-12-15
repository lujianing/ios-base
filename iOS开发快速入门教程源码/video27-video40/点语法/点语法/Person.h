//
//  Person.h
//  点语法
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int _age;
}

- (void)setAge:(int)age; // 方法名是setAge:
- (int)age; // 方法名是age

// 方法名是setAge:andNo:
// - (void)setAge:(int)newAge andNo:(int)no;
@end
