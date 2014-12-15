//
//  main.m
//  Foundation14-NSDate
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark 日期创建
void dateCreate() {
    // date方法返回的就是当前时间(now)
    NSDate *date = [NSDate date];
    
   // now:  11:12:40
   // date: 11:12:50
    date = [NSDate dateWithTimeIntervalSinceNow:10];
    
    // 从1970-1-1 00:00:00开始
    date = [NSDate dateWithTimeIntervalSince1970:10];
    
    // 随机返回一个比较遥远的未来时间
    date = [NSDate distantFuture];
    
    // 随机返回一个比较遥远的过去时间
    date = [NSDate distantPast];
    NSLog(@"%@", date);
}

void dateUse() {
    NSDate *date = [NSDate date];
    // 返回1970-1-1开始走过的毫秒数
    NSTimeInterval interval = [date timeIntervalSince1970];
    
    // 跟其他时间进行对比
    // [date timeIntervalSinceDate:<#(NSDate *)#>];
    NSDate *date2 = [NSDate date];
    // 返回比较早的那个时间
    [date earlierDate:date2];
    // 返回比较晚的那个时间
    [date laterDate:date2];
}

void dateFormat() {
    NSDate *date = [NSDate date];
    
    // 2013-04-07 11:14:45
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    // HH是24进制，hh是12进制
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    
    // formatter.locale = [[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"] autorelease];
    
    NSString *string = [formatter stringFromDate:date];
    NSLog(@"%@", string);
    
    // 返回的格林治时间
    NSDate *date2 = [formatter dateFromString:@"2010-09-09 13:14:56"];
    
    NSLog(@"%@", date2);
    
    [formatter release];
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        dateFormat();
    }
    return 0;
}

