//
//  Student.h
//  property
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject {
    int _age;
    int _no;
    float _height;
}

// 当编译器遇到@property时，会自动展开成getter和setter的声明
@property int age;
//- (void)setAge:(int)newAge;
//- (int)age;

@property int no;
//- (void)setNo:(int)newNo;
//- (int)no;

@property float height;
//- (void)setHeight:(float)newHeight;
//- (float)height;


- (void)test;
@end
