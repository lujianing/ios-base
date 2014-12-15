//
//  Person.m
//  点语法
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setAge:(int)age {
    NSLog(@"调用了setAge方法：%i", age);
    _age = age;
    
    // 这是错误的写法，会导致死循环，无限调用set方法
    // self.age = newAge;// [self setAge:newAge];
}

- (int)age {
    NSLog(@"调用了age方法：%i", _age);
    
    return _age;
}
@end
