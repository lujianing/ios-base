//
//  main.m
//  内存管理1-retain和release的简单使用
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

void test() {
    Student *stu = [[Student alloc] init]; // 1
    
    // z代表无符号
    NSLog(@"count:%zi", [stu retainCount]);
    
    [stu retain]; // 2
    
    NSLog(@"count:%zi", [stu retainCount]);
    
    [stu release]; // 1
    
    NSLog(@"count:%zi", [stu retainCount]);
    
    [stu release]; // 0
    
    // [stu release]; // 会发生野指针错误，也就是说访问了不属于你的内存
}

void test1() {
    // Student对象的计数器永远为1，所以不可能被释放
    [[Student alloc] init].age = 10;
    
    
    [Student new].age = 10;
    
    // 上面的代码都有内存泄露
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
    }
    return 0;
}

