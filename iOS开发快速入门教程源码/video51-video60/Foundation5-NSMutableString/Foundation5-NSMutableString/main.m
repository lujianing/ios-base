//
//  main.m
//  Foundation5-NSMutableString
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark 可变字符串的创建
void stringCreate() {
    // 预先分配10个字数的存储空间
    NSMutableString *str = [[NSMutableString alloc] initWithCapacity:10];
    // 设置字符串内容
    [str setString:@"1234"];
    
    // 拼接一个字符串
    [str appendString:@"567"];
    // 拼接字符串
    [str appendFormat:@"age is %i and height is %.2f", 27, 1.55f];
    
    // 替换字符串
    NSRange range = [str rangeOfString:@"height"];
    //NSRange range = NSMakeRange(7, 3);
    [str replaceCharactersInRange:range withString:@"no"];
    
    // 插入字符串
    [str insertString:@"abc" atIndex:2];
    
    // 删除字符串
    range = [str rangeOfString:@"age"];
    [str deleteCharactersInRange:range];
    
    NSLog(@"%@", str);
    
    // 释放对象
    [str release];
}

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        stringCreate();
    }
    return 0;
}

