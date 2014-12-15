//
//  main.m
//  Foundation12-NSValue
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

void value() {
    CGPoint point = CGPointMake(10, 10);
    // 将结构体变量包装成一个对象
    NSValue *value = [NSValue valueWithPoint:point];
    
    NSMutableArray *array = [NSMutableArray array];
    // 添加value
    [array addObject:value];
    
    // 取出当时放进去的value
    NSValue *value1 = [array lastObject];
    CGPoint point1 = [value1 pointValue];
    
    BOOL result = CGPointEqualToPoint(point1, point);
    NSLog(@"result=%i", result);
}


typedef struct {
    int year;
    int month;
    int day;
} Date;
void value2() {
    Date date = {2013, 4, 7};
    // void *代表任何指针
    // 这里要传结构体的地址&date
    
    // 根据结构体类型生成 对应的 类型描述字符串
    char *type = @encode(Date);
    NSValue *value = [NSValue value:&date withObjCType:type];
    
    
    // 定义一个结构体变量
    Date date1;
    
    // 取出包装好的结构体
    [value getValue:&date1];
    
    // [value objCType];  取出类型描述字符串
    
    NSLog(@"year=%i, month=%i, day=%i", date1.year, date1.month, date1.day);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        value2();
    }
    return 0;
}

