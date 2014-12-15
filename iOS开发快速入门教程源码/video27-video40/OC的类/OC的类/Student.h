//
//  Student.h
//  OC的类
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//  只是用来声明Student这个类有哪些成员变量和方法

#import <Foundation/Foundation.h>

// @interface代表声明一个类
// : 代表继承
@interface Student : NSObject { // 成员变量要定义在下面的大括号中{}
    int age;
    int no;
}

// 在这里声明的所有方法都是公共

// age的get方法
// - 代表动态方法  + 代表静态方法
- (int)age;

// age的set方法
- (void)setAge:(int)newAge;

// no的get方法
- (int)no;

- (void)setAge:(int)newAge andNo:(int)newNo;
@end

