//
//  main.m
//  Foundation6-NSArray
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

#pragma mark 创建一个数组
void arrayCreate() {
    // 创建一个空的数组
    NSArray *array = [NSArray array];
    
    // 创建有1个元素的数组
    array = [NSArray arrayWithObject:@"123"];
    
    // 创建有多个元素的数组
    array = [NSArray arrayWithObjects:@"a", @"b", @"c", nil];
    
    int count = [array count];
    // count = array.count;
    NSLog(@"%i", count);
}

#pragma mark 数组的简单使用
void arrayUse() {
    NSObject *obj = [[NSObject alloc] init];
    NSArray *array = [NSArray arrayWithObjects:@"a", @"b", @"c" , obj, nil];
    // 判断是否包含了某个元素
    if ([array containsObject:@"a"]) {
        NSLog(@"包含了字符串a");
    }
    
    NSString *last = [array lastObject];
    NSLog(@"last=%@", last);
    
    NSString *str = [array objectAtIndex:1];
    NSLog(@"%@", str);
    
    int index = [array indexOfObject:@"c"];
    NSLog(@"index=%i", index);
    
    [obj release];
}

#pragma mark 数组的内存管理
void arrayMemory() {
    // 1
    Student *stu1 = [[Student alloc] init];
    Student *stu2 = [[Student alloc] init];
    Student *stu3 = [[Student alloc] init];
    
    NSLog(@"stu1:%zi", [stu1 retainCount]);
    
    // 当把一个对象塞进数组中时，这个对象的计数器会加1，也就是说数组会对它做一次retain操作
    // 2
    NSArray *array = [[NSArray alloc] initWithObjects:stu1, stu2, stu3, nil];
    
    NSLog(@"stu1:%zi", [stu1 retainCount]);
    
    NSLog(@"count=%zi", array.count);
    
    // 1
    [stu1 release];
    [stu2 release];
    [stu3 release];
    
    // 数组被销毁的时候，会对内部的所有元素都做一次release操作
    // 0
    [array release];
}

#pragma mark 给数组里面的元素发送消息
void arrayMessage() {
    Student *stu1 = [Student student];
    Student *stu2 = [Student student];
    Student *stu3 = [Student student];
    
    NSArray *array = [NSArray arrayWithObjects:stu1, stu2, stu3, nil];
    // 让数组里面的所有对象都调用test方法
    // [array makeObjectsPerformSelector:@selector(test)];
    [array makeObjectsPerformSelector:@selector(test2:) withObject:@"123"];
}

#pragma mark 遍历数组1
void arrayFor1() {
    Student *stu1 = [Student student];
    NSArray *array = [NSArray arrayWithObjects:stu1, @"1", @"2", @"3", nil];
    int count = array.count;
    for (int i = 0; i<count; i++) {
        // id == void *
        id obj = [array objectAtIndex:i];
        NSLog(@"%i-%@", i, obj);
    }
}

#pragma mark 遍历数组2
void arrayFor2() {
    Student *stu1 = [Student student];
    NSArray *array = [NSArray arrayWithObjects:stu1, @"1", @"2", @"3", nil];
    // 快速遍历
    int i =0;
    for (id obj in array) {
        NSLog(@"%i-%@", i, obj);
        i++;
    }
}

#pragma mark 遍历数组3
void arrayFor3() {
    Student *stu1 = [Student student];
    NSArray *array = [NSArray arrayWithObjects:stu1, @"1", @"2", @"3", nil];
    [array enumerateObjectsUsingBlock:
     ^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%i-%@", idx, obj);
         
         // 如果索引为1，就停止遍历
         if (idx == 1) {
             // 利用指针修改外面BOOL变量的值
             *stop = YES;
         }
    }];
}

#pragma mark 遍历数组4
void arrayFor4() {
    Student *stu1 = [Student student];
    NSArray *array = [NSArray arrayWithObjects:stu1, @"1", @"2", @"3", nil];
    
    // 获取数组的迭代器
    // NSEnumerator *enumerator = [array objectEnumerator];
    // 反序迭代器（从尾部开始遍历元素）
    NSEnumerator *enumerator = [array reverseObjectEnumerator];
    
    // allObjects是取出没有被遍历过的对象
    NSArray *array2 = [enumerator allObjects];
    NSLog(@"array2:%@", array2);
    
    // 获取下一个需要遍历的元素
    id obj = nil;
    while (obj = [enumerator nextObject]) {
        NSLog(@"obj=%@", obj);
    }
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        arrayFor4();
    }
    return 0;
}

