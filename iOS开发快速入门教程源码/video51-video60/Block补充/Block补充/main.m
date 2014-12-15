//
//  main.m
//  Block补充
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

int sum(int a, int b) {
    return a + b;
}

void test() {
    int (^Sum) (int, int) = ^(int a, int b) {
        return a + b;
    };
    
    // block
    int c = Sum(10, 9);
    NSLog(@"%i", c);
    
    // 函数
    c = sum(10, 10);
    NSLog(@"%i", c);
    
    int (*sump) (int, int) = sum;
    c = (*sump)(9, 9);
    NSLog(@"%i", c);
}

typedef char * String;

void test1() {
    // 定义了Sum这种Block类型
    typedef int (^Sum) (int, int);
    
    // 定义了sump这种指针类型，这种指针是指向函数的
    typedef int (*Sump) (int, int);
    
    // 定义了一个block变量
    Sum sum1 = ^(int a, int b) {
        return a + b;
    };
    
    int c = sum1(10, 10);
    NSLog(@"%i", c);
    
    // 定义一个指针变量p指向sum函数
    Sump p = sum;
    // c = (*p)(9, 8);
    c = p(9, 8);
    NSLog(@"%i", c);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        test1();
    }
    return 0;
}

