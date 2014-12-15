//
//  main.m
//  Foundation10-NSMUtableDictonary
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

#pragma mark 可变字典的使用
void dictUse() {
    // 创建一个空的字典
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    Student *stu1 = [Student studentWithName:@"stu1"];
    Student *stu2= [Student studentWithName:@"stu2"];
    
    // 添加元素
    // stu1的计数器会+1
    [dict setObject:stu1 forKey:@"k1"];
    NSLog(@"stu1:%zi", [stu1 retainCount]);
    
    // 添加其他字典other到当前字典dict中
    NSDictionary *other = [NSDictionary dictionaryWithObject:@"v2" forKey:@"k2"];
    [dict addEntriesFromDictionary:other];
    
    // 删除所有的键值对
    // [dict removeAllObjects];
    
    // 删除k1对应的元素stu1，stu1会做一次release操作
    [dict removeObjectForKey:@"k1"];
    NSLog(@"stu1:%zi", [stu1 retainCount]);
    
    // 删除多个key对应的value
    // [dict removeObjectsForKeys:[NSArray arrayWithObject:@"k1"]];
    
    // 字典被销毁时，内部的所有key和value计数器都会-1，也就是说stu1会release一次
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        dictUse();
    }
    return 0;
}

