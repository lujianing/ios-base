//
//  Student.m
//  property
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student

// @synthesize age, height, no;

// @synthesize会自动生成getter和setter的实现

// @synthesize默认会去访问跟age同名的变量
// 如果找不到同名的变量，会自动生成一个私有的同名变量age
// @synthesize age;

// age = _age代表getter和setter会去访问_age这个成员变量
@synthesize age = _age;
//- (void)setAge:(int)newAge {
//    _age = newAge;
//}
//
//- (int)age {
//    return _age;
//}

@synthesize height = _height;
//- (void)setHeight:(float)newHeight {
//    _height = newHeight;
//}
//
//- (float)height {
//    return _height;
//}

@synthesize no = _no;
//- (void)setNo:(int)newNo {
//    _no = newNo;
//}
//
//- (int)no {
//    return _no;
//}

- (void)test {
    
    _age = 10;
    
    
    _height = 10.0f;
    
    _no = 10;
    
}
@end
