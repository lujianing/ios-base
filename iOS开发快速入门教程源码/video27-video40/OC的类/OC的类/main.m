//
//  main.m
//  OC的类
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Student.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        // 创建一个Student对象：
        
        // 1.调用一个静态方法alloc来分配内存
        // 暂时把id当做是任何对象
//        Student *stu = [Student alloc];
//        
//        // 2.调用一个动态方法init进行初始化
//        stu = [stu init];
        
        Student *stu = [[Student alloc] init];
        
        //[stu setAge:100];
        
        //int age = [stu age];
        
        //NSLog(@"age is %i", age);
        
        [stu setAge:17 andNo:1];
        
        NSLog(@"age is %i and no is %i", [stu age], [stu no]);
        
        // 释放对象
        [stu release];
    }
    return 0;
}

