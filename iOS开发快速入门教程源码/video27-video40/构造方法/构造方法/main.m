//
//  main.m
//  构造方法
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // char *s = "itcast";  C语言中字符串
        
        NSString *str =  @"itcast"; // OC中的字符串
        
        
        Student *stu = [[Student alloc] initWithAge:15 andNo:2];
        
        // NSLog(@"age is %i and no is %i", stu.age, stu.no);
        // %@代表打印一个OC对象
        NSLog(@"%@", stu);
        
        [stu release];
    }
    return 0;
}

