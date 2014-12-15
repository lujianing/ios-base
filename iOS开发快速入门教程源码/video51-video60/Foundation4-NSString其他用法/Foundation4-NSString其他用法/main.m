//
//  main.m
//  Foundation4-NSString其他用法
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark 字符串的大小写处理
void caseTest() {
    NSString *str = @"GuangDong";
    // 转成大写
    NSLog(@"大写：%@", [str uppercaseString]);
    // 转成小写
    NSLog(@"小写：%@", [str lowercaseString]);
    // 首字母变大写，其他字母变小写
    NSLog(@"首字母变大写：%@", [@"aGE" capitalizedString]);
}

#pragma mark 字符串的比较
void compare() {
    // 检测字符串的内容是否相同
    BOOL result = [@"abc" isEqualToString:@"abc"];
    NSLog(@"%i", result);
    
    // NSOrderedAscending  右边的字符串比左边大
    // NSOrderedSame  两个字符串的内容相同
    // NSOrderedDescending  左边的字符串比右边的大
    NSComparisonResult result2 = [@"abc" compare:@"Abc"];
    if (result2 == NSOrderedSame) {
        NSLog(@"两个字符串的内容相同");
    } else if (result2 == NSOrderedAscending) {
        NSLog(@"右边 > 左边");
    } else if (result2 == NSOrderedDescending) {
        NSLog(@"右边 < 左边");
    }
}

#pragma mark 字符串的搜索
void search() {
    NSString *str = @"123456456.txt";
    
    NSLog(@"是否以22开头：%i", [str hasPrefix:@"22"]);
    NSLog(@"是否以txt结尾：%i", [str hasSuffix:@"txt"]);
    
    // 搜索字符串
    NSRange range = [str rangeOfString:@"456"];
    // range.length == 0
    if (range.location == NSNotFound) {
        NSLog(@"不能找到");
    } else {
        NSLog(@"找到的范围是：%@", NSStringFromRange(range));
    }
    
    // 从尾部开始搜索字符串
    range = [str rangeOfString:@"456" options:NSBackwardsSearch];
    NSLog(@"%@", NSStringFromRange(range));
    
    // 指定范围进行搜索
    // [str rangeOfString:@"456" options:NSBackwardsSearch range:<#(NSRange)#>];
}

#pragma mark 字符串的截取
void subString() {
    NSString *str = @"123456";
    
    // 从索引3开始截取到尾部(包括3)
    NSLog(@"%@", [str substringFromIndex:3]);
    
    // 从头部开始截取到索引3之前(不包括3)
    NSLog(@"%@", [str substringToIndex:3]);
    
    // 指定范围进行截取
    NSRange range = NSMakeRange(2, 3);
    NSLog(@"%@", [str substringWithRange:range]);
    
    NSString *str2 = @"a-b-c-d-5";
    NSArray *array = [str2 componentsSeparatedByString:@"-"];
    NSLog(@"%@", array);
    
    NSString *str3 =  [array objectAtIndex:0];
    NSLog(@"%@", str3);
}

#pragma mark 与路径相关
void pathTest() {
    // 快速创建一个自动释放的数组
    NSMutableArray *components = [NSMutableArray array];
    [components addObject:@"Users"];
    [components addObject:@"MJ"];
    [components addObject:@"Desktop"];
    // 将数组中的所有字符串拼接成一个路径
    NSString *path = [NSString pathWithComponents:components];
    NSLog(@"%@", path);
    
    // 将路径分解成一个数组
    NSArray *cmps = [path pathComponents];
    NSLog(@"%@", cmps);
    
    // path是一个字符串常量，是不可变的
    path = @"/users/mj/test";
    // 判断是够为绝对路径（依据是前面有无/）
    NSLog(@"%i", [path isAbsolutePath]);
    NSLog(@"最后一个目录：%@", [path lastPathComponent]);
    // 删除最后一个目录
    NSLog(@"%@", [path stringByDeletingLastPathComponent]);
    // 在最后面拼接一个目录
    NSLog(@"%@", [path stringByAppendingPathComponent:@"abc"]);
}

#pragma mark 拓展名处理
void extension() {
    NSString *str = @"/User/MJ/test.txt";
    
    NSLog(@"拓展名：%@", [str pathExtension]);
    // 删除拓展名
    NSLog(@"%@", [str stringByDeletingPathExtension]);
    // 添加拓展名
    NSLog(@"%@", [@"abc" stringByAppendingPathExtension:@"mp3"]);
}

#pragma mark 其他用法
void other() {
    NSString *str = @"12";
    int a = [str intValue];
    NSLog(@"%i", a);
    
    // 计算字数，不是计算字符数
    NSLog(@"length=%zi", [@"我是字符串123" length]);
    
    // 取出对应的字符
    unichar c = [@"abc" characterAtIndex:0];
    NSLog(@"%c", c);
    
    // 返回C语言中的字符串
    const char *s = [@"abc" UTF8String];
    NSLog(@"%s", s);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        other();
    }
    return 0;
}

