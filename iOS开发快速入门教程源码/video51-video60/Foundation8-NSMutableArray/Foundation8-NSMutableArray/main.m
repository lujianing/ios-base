//
//  main.m
//  Foundation8-NSMutableArray
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

void arrayCreate() {
    NSMutableArray *array = [NSMutableArray arrayWithObject:@"1"];
    // 添加元素
    [array addObject:@"2"];
    [array addObject:@"3"];
    
    // [array removeObject:@"2"];
    // [array removeLastObject];
    [array removeAllObjects];
    
    NSLog(@"%@", array);
}


void arrayMemory() {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    // stu1:1
    Student *stu1 = [[Student alloc] init];
    stu1.age = 10;
    // stu2:1
    Student *stu2 = [[Student alloc] init];
    stu2.age = 20;
    
    // 对被添加的元素做一次retain操作，计数器+1
    [array addObject:stu1]; // stu1:2
    [array addObject:stu2]; // stu2:2
    
    NSLog(@"add->stu1:%zi", [stu1 retainCount]);
    
    // 对被删除的元素做一次release操作，计数器-1
    [array removeObject:stu1]; // stu1:1
    
    NSLog(@"remove->stu1:%zi", [stu1 retainCount]);
    
    // 释放学生
    [stu1 release]; // stu1:0
    [stu2 release]; // stu2:1
    
    // 当数组被释放的时候，会对所有的元素都做一次release操作
    [array release]; // stu2:0
}

void arrayReplace() {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"1", @"2", @"3", nil];
    
    [array replaceObjectAtIndex:1 withObject:@"4"];
    
    NSLog(@"%@", array);
}

void arraySort() {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"1", @"3", @"2", nil];
    
    [array sortUsingSelector:@selector(compare:)];
    
    NSLog(@"%@", array);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        arraySort();
    }
    return 0;
}

