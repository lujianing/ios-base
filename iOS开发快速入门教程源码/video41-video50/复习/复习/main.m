//
//  main.m
//  复习
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // Student *stu = [[Student alloc] initWithAge:10];
        
        Student *stu = [Student new];
        // Student *stu = [[Student alloc] init];
        
        stu.age = 11;
        
        //[stu setAge:11];
        
        NSLog(@"age is %i", stu.age);
        
        [stu release];
    }
    return 0;
}

