//
//  main.m
//  内存管理4-autorelease
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[])
{
    // @autoreleasepool代表创建一个自动释放池
    @autoreleasepool {
        Student *stu = [[[Student alloc] init] autorelease];
        
        //[stu autorelease];
        
        Student *stu1 = [[[Student alloc] init] autorelease];
        //[stu1 autorelease];
        
        // 这个stu2是自动释放的，不需要释放
        Student *stu2 = [Student student];
        
        // 这个str是自动释放的，不需要释放
        NSString *str = [NSString stringWithFormat:@"age is %i", 10];
        
        
        for (int i = 0; i<1000; i++) {
            [Student student];
        }
    }
    return 0;
}

