//
//  main.m
//  内存管理2-对象之间的内存管理
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Student.h"

void test(Student *stu) {
    // book:1
    Book *book = [[Book alloc] initWithPrice:3.5];

    // book:2
    stu.book = book;

    // book:1
    [book release];
    
    // book:1
    stu.book = book;
    stu.book = book;
    
     // book2:1
    Book *book2 = [[Book alloc] initWithPrice:4.5];
     // book2:2
    stu.book = book2;
    // book2:2
    stu.book = book2;
    // book2:1
    [book2 release];
    
    // book2:1
    stu.book = book2;
}

void test1(Student *stu) {
    [stu readBook];
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // stu:1
        Student *stu = [[Student alloc] initWithAge:10];
        
        // stu:1
        // book:1
        // book2:1
        test(stu);
        
        // stu:1
        // book:1
        // book2:1
        test1(stu);
        
        // stu:0
        // book2:0
        // book:1
        [stu release];
        
        // stu = nil;  清空stu这个指针，stu就会变成空指针
        
        // [stu release]; // 野指针（会报错）
        
        [nil release]; // 空指针（不会报错）
    }
    return 0;
}

