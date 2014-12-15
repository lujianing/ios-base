//
//  main.m
//  Foundation1-结构体
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

void test() {
    // 定义了Date这种结构体类型
    struct Date {
        int year;
        int month;
        int day;
    };
    
    // 定义结构体变量
    struct Date d = {2013, 4, 5};
    d.day = 6;
}

void test1() {
    typedef struct Date {
        int year;
        int month;
        int day;
    } MyDate;
    
    MyDate d = {2013, 4, 5};
}

void range() {
    NSRange range = NSMakeRange(8, 10);
    
    NSLog(@"location:%zi", range.location);
    NSLog(@"length:%zi", range.length);
    
    NSString *str =  NSStringFromRange(range);
    NSLog(@"%@", str);
    // NSLog(@"%@", range); 错误的做法，%@代表着OC对象
}

void point() {    
    // NSPoint p;
    CGPoint p;
    p.x = 1;
    p.y = 10;
    
    p = NSMakePoint(10, 9);
    
    // 常见的方式
    p = CGPointMake(8, 9);
    
    NSString *str = NSStringFromPoint(p);
    NSLog(@"%@", str);
}

void size() {
    CGSize size; // NSSize size;
    size.width = 100;
    size.height = 90;
    
    size = NSMakeSize(90, 80);
    
    size = CGSizeMake(10, 8);
    
    NSString *str = NSStringFromSize(size);
    NSLog(@"%@", str);
}

void rect() {
    NSRect rect; // CGRect rect;
    rect.origin.x = 10;
    rect.origin.y = 11;
    
    rect.size.width = 100;
    rect.size.height = 90;
    
    rect = NSMakeRect(10, 10, 80, 80);
    
    rect = CGRectMake(8, 9, 10, 90);
    
    NSString *str = NSStringFromRect(rect);
    NSLog(@"%@", str);
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        rect();
    }
    return 0;
}

