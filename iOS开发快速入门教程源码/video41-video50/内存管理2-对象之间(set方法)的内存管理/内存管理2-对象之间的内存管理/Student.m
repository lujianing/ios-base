//
//  Student.m
//  内存管理2-对象之间的内存管理
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student

#pragma mark - 生命周期方法
#pragma mark 构造方法
- (id)initWithAge:(int)age {
    if ( self = [super init] ) {
        _age = age;
    }
    
    return self;
}

#pragma mark 回收对象
- (void)dealloc {
    // 释放Book对象
    [_book release];
    
    // [self.book release];
    
    NSLog(@"student:%i 被销毁了", _age);
    [super dealloc];
}

#pragma mark - getter和setter
// @synthesize book = _book;
// 如果自己手动实现了getter和setter，xcode就不会自动生成@synthesize
// 也就不会自动生成_book
// getter和setter的默认实现
- (void)setBook:(Book *)book {
    if (_book != book) {
        // 先释放旧的成员变量
        [_book release];
        // 再retain新传进来的对象
        _book = [book retain];
    }
}

- (Book *)book {
    return _book;
}

#pragma mark - 公共方法
#pragma mark 读书
- (void)readBook {
    NSLog(@"当前读的书是：%f", _book.price);
}



//#pragma mark - 私有方法
//#pragma mark 私有方法1
//- (void)test1 {
//
//
//}
//#pragma mark 私有方法2
//- (void)test2 {
//    
//    
//}
//#pragma mark 私有方法3
//- (void)test3 {
//    
//    
//}

@end
