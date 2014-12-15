//
//  main.m
//  Foundation15-NSObject
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Person.h"

#pragma mark NSObject常用方法
void objUse() {
    Student *stu = [[[Student alloc] init] autorelease];
    
    // isKindOfClass判断对象是否属于某个类 或者 子类
    if ( [stu isKindOfClass:[Person class]] ) {
        // NSLog(@"stu属于Person或者继承自Person");
    }
    
    // isMemberOfClass判断对象是否属于某个类（不包括子类）
    BOOL result = [stu isMemberOfClass:[Student class]];
    // NSLog(@"%i", result);
    
    
    // 直接调用
    // [stu test];
    
    // 间接调用
    [stu performSelector:@selector(test)];
    // [stu performSelector:@selector(test2:) withObject:@"abc"];
    // 延迟2秒后调用test2:方法
    [stu performSelector:@selector(test2:) withObject:@"abc" afterDelay:2];
}

void reflect() {
    // 类的反射
    NSString *str = @"Person";
    Class class = NSClassFromString(str);
    
    Person *person = [[class alloc] init];
    NSLog(@"%@", person);
    
    
    // Class变成字符串
    NSString *name =  NSStringFromClass([Person class]);
    
    
    // 方法的反射
    NSString *method = @"test";
    SEL selector = NSSelectorFromString(method);
    [person performSelector:selector];
    
    // 将SEL转换为字符串
    NSString *selectorName = NSStringFromSelector(selector);
    
    
    [person release];
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        reflect();
    }
    return 0;
}

