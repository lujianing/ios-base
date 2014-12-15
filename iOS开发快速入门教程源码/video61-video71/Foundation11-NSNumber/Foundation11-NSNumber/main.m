//
//  main.m
//  Foundation11-NSNumber
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

void number() {
    // 将int类型的10 包装成 一个NSNumber对象
    NSNumber *number = [NSNumber numberWithInt:10];
    NSLog(@"number=%@", number);
    
    NSMutableArray *array = [NSMutableArray array];
    // 添加数值到数组中
    [array addObject:number];
    
    // 取出来还是一个NSNumber对象，不支持自动解包(也就是不会自动转化为int类型)
    NSNumber *number1 = [array lastObject];
    // 将NSNumber转化成int类型
    int num = [number1 intValue];
    NSLog(@"num=%i", num);
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        number();
    }
    return 0;
}

