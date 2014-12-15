//
//  main.m
//  内存管理3-@property的参数
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Book.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student *stu = [[Student alloc] init];
        
        Book *book = [[Book alloc] init];
        stu.book = book;
        [book release];
        
        Book *book2 = [[Book alloc] init];
        stu.book = book2;
        [book2 release];
        
        stu.rich = YES;
        
        BOOL rich = stu.isRich;
        
        [stu release];
    }
    return 0;
}

