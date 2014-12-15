//
//  main.m
//  成员变量补充
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student *stu = [[[Student alloc] init] autorelease];
        
        // 直接访问成员变量height
        stu->height = 10;
        NSLog(@"height is %.0f", stu->height);
        
        // 通过set方法访问成员变量age
        stu.age = 19;
        // 通过get方法访问成员变量age
        NSLog(@"age is %i", stu.age);
    }
    return 0;
}

