//
//  main.m
//  Foundation9-NSDictionary
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

#pragma mark 字典的初始化
void dictCreate() {
    // NSDictionary是不可变的
    NSDictionary *dict = [NSDictionary dictionaryWithObject:@"v" forKey:@"k"];
    
    // 最常用的初始化方式
    dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"v1", @"k1",
            @"v2", @"k2",
            @"v3", @"k3", nil];
    
    NSArray *objects = [NSArray arrayWithObjects:@"v1", @"v2", @"v3", nil];
    NSArray *keys = [NSArray arrayWithObjects:@"k1", @"k2", @"k3", nil];
    dict = [NSDictionary dictionaryWithObjects:objects forKeys:keys];
    NSLog(@"%@", dict);
}

#pragma mark 字典的基本用法
void dictUse() {
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
            @"v1", @"k1",
            @"v2", @"k2",
            @"v3", @"k3", nil];
    
    // count是计算有多少个键值对(key-value)
    NSLog(@"count=%zi", dict.count);
    
    // 由于NSDictionary是不可变的，所以只能取值，而不能修改值
    id obj = [dict objectForKey:@"k2"];
    NSLog(@"obj=%@", obj);
    
    // 将字典写入文件中
    NSString *path = @"/Users/apple/Desktop/dict.xml";
    [dict writeToFile:path atomically:YES];
    
    // 从文件中读取内容
    dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSLog(@"dict=%@", dict);
}

#pragma mark 字典的用法
void dictUse2() {
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"v1", @"k1",
                          @"v2", @"k2",
                          @"v3", @"k3", nil];
    // 返回所有的key
    NSArray *keys = [dict allKeys];
    //NSLog(@"keys=%@", keys);
    
    NSArray *objects = [dict allValues];
    //NSLog(@"objects=%@", objects);
    
    // 根据多个key取出对应的多个value
    // 当key找不到对应的value时，用marker参数值代替
    objects = [dict objectsForKeys:[NSArray arrayWithObjects:@"k1", @"k2", @"k4", nil] notFoundMarker:@"not-found"];
    NSLog(@"objects=%@", objects);
}

#pragma mark 遍历字典
void dictFor() {
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"v1", @"k1",
                          @"v2", @"k2",
                          @"v3", @"k3", nil];
    // 遍历字典的所有key
    for (id key in dict) {
        id value = [dict objectForKey:key];
        NSLog(@"%@=%@", key, value);
    }
}

#pragma mark 遍历字典2
void dictFor2() {
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"v1", @"k1",
                          @"v2", @"k2",
                          @"v3", @"k3", nil];
    // key迭代器
    NSEnumerator *enumer = [dict keyEnumerator];
    id key = nil;
    while ( key = [enumer nextObject]) {
        id value = [dict objectForKey:key];
        NSLog(@"%@=%@", key, value);
    }
    
    // 对象迭代器
    // [dict objectEnumerator];
}

#pragma mark 遍历字典3
void dictFor3() {
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          @"v1", @"k1",
                          @"v2", @"k2",
                          @"v3", @"k3", nil];
    [dict enumerateKeysAndObjectsUsingBlock:
     ^(id key, id obj, BOOL *stop) {
        NSLog(@"%@=%@", key, obj);
    }];
}

#pragma mark 
void dictMemory() {
    Student *stu1 = [Student studentWithName:@"stu1"];
    Student *stu2 = [Student studentWithName:@"stu2"];
    Student *stu3 = [Student studentWithName:@"stu3"];
    
    // 一个对象称为字典的key或者value时，会做一次retain操作，也就是计数器会+1
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:
                          stu1, @"k1",
                          stu2, @"k2",
                          stu3, @"k3", nil];
    
    // 当字典被销毁时，里面的所有key和value都会做一次release操作，也就是计数器会-1
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        dictMemory();
    }
    return 0;
}