//
//  main.m
//  copy-mutableCopy
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "GoodStudent.h"

// copy语法的目的：改变副本的时候，不会影响到源对象

#pragma mark 演示字符串的拷贝（深拷贝）
// 深拷贝：内容拷贝，会产生新的对象。新对象计数器置为1，源对象计数器不变。
void stringMutableCopy() {
    // string:1
    NSString *string = [[NSString alloc] initWithFormat:@"age is %i", 10];
    
    // 产生了一个新的对象，计数器为1。源对象的计数器不变。
    // str:1
    // string:1
    NSMutableString *str = [string mutableCopy];
    //NSLog(@"str:%zi", [str retainCount]);
    //NSLog(@"string:%zi", [string retainCount]);
    
    // str和string不是相同对象
    // NSLog(@"%i", str == string);
    
    [str appendString:@" abcd"];
    
    NSLog(@"string:%@", string);
    NSLog(@"str:%@", str);
    
    // str:0
    [str release];
    // string:0
    [string release];
}

#pragma mark 演示字符串的拷贝（浅拷贝）
// 只有一种情况是浅拷贝：不可变对象调用copy方法时

// 浅拷贝：指针拷贝，不会产生新的对象。源对象计数器+1。
void stringCopy() {
    NSString *string = [[NSString alloc] initWithFormat:@"age is %i", 10];
    NSLog(@"%zi", [string retainCount]);
    
    // copy产生的是不可变副本，由于源对象本身就不可变，所以为了性能着想，copy会直接返回源对象本身
    // 源对象计数器会+1
    // 在浅拷贝情况下，copy其实就相当于retain
    NSString *str = [string copy];
    NSLog(@"%zi", [string retainCount]);
    
    // NSLog(@"%i", str == string);
    
    [str release];
    [string release];
}

#pragma mark 可变字符串的copy（深拷贝）
void mutableStringCopy() {
    NSMutableString *string = [NSMutableString stringWithFormat:@"age is %i", 10];
    
    // 会产生一个新对象，str计数器为1
    NSString *str = [string copy];
    
    [str release];
}

#pragma mark 可变字符串的MutableCopy（深拷贝）
void mutableStringMutableCopy() {
    NSMutableString *string = [NSMutableString stringWithFormat:@"age is %i", 10];
    
    // 会产生一个新对象，str计数器为1
    NSMutableString *str = [string mutableCopy];
    
    [str appendString:@"1234"];
    
    NSLog(@"str:%@", str);
    NSLog(@"string:%@", string);
    
    [str release];
}

#pragma mark 演示Student的name的copy
void studentNameCopy() {
    Student *stu = [[[Student alloc] init] autorelease];
    
    NSMutableString *string = [NSMutableString stringWithFormat:@"age is %i", 10];
    
    stu.name = string;
    
    [string appendString:@"abcd"];
    
    NSLog(@"name=%@", stu.name);
    NSLog(@"string=%@", string);
}

#pragma mark 演示Student的copy
void studentCopy() {
    Student *stu1 = [Student studentWithName:@"stu1"];
    
    Student *stu2 = [stu1 copy];
    stu2.name = @"stu2";
    
    NSLog(@"stu1:%@", stu1);
    NSLog(@"stu2:%@", stu2);
    
    [stu2 release];
}

void goodStudentCopy() {
    GoodStudent *stu1 = [GoodStudent goodStudentWithAge:10 name:@"good1"];
    
    GoodStudent *stu2 = [stu1 copy];
    stu2.name = @"good2";
    stu2.age = 11;
    
    NSLog(@"stu1:%@", stu1);
    NSLog(@"stu2:%@", stu2);
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        goodStudentCopy();
    }
    return 0;
}

