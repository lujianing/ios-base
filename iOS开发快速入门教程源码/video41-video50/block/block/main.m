//
//  main.m
//  block
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Button.h"

typedef int (^MySum) (int, int);

void test() {
    // 定义了一个block，这个block返回值是int类型，接收两个int类型的参数
    int (^Sum) (int, int) = ^(int a, int b) {
        return a + b;
    };
    int a = Sum(10 ,11);
    
    NSLog(@"%i", a);
}

void test2() {
    // __block有2个下划线
    __block int c = 15;
    
    // 声明了一个block变量
    MySum sum = ^(int a, int b) {
        // 如果外部的变量用了__block关键字，就可以在block内部修改这个变量
        c = 19;
        
        // block可以访问外面定义的变量
        NSLog(@"c is %i", c);
        
        return a + b;
    };
    
    NSLog(@"%i",  sum(10, 10));
}


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Button *btn = [[[Button alloc] init] autorelease];
        
        btn.block = ^(Button *btn) {
            NSLog(@"按钮-%@被点击了", btn);
        };
        
        // 模拟按钮点击
        [btn click];
    }
    return 0;
}

