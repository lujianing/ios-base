//
//  main.m
//  NSString
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark NSString的创建
void stringCreate() {
    // char *s = "A String!"; // C语言中的字符串
    
    // 这种方式创建出来的字符串是不需要释放的
    NSString *str1 = @"A String!";
    
    NSString *str2 = [[NSString alloc] init];
    str2 = @"A String!";
    [str2 release];
    
    NSString *str3 = [[NSString alloc] initWithString:@"A String!"];
    [str3 release];
    // 不需要管理内存
    str3 = [NSString stringWithString:@"A String!"];
    
    
    NSString *str4 = [[NSString alloc] initWithUTF8String:"A String!"];
    [str4 release];
    str4 = [NSString stringWithUTF8String:"A String!"];
    
    NSString *str5 = [[NSString alloc] initWithFormat:@"My age is %i and height is %.2f", 19, 1.55f];
    
    // 这句代码放在中间会造成2个错误：
    // 1.前面创建的字符串没有被释放
    // 2.后面创建的字符串会释放过度，造成野指针错误
    // str5 = [NSString stringWithFormat:@"My age is %i and height is %.2f", 19, 1.55f];
    
    NSLog(@"str5:%@", str5);
    [str5 release];
    
    str5 = [NSString stringWithFormat:@"My age is %i and height is %.2f", 19, 1.55f];
}

void test(NSString **str) {
    *str = @"123";
    // s = @"123";
}

void stringCreate2() {
    // 从文件中读取文本
    NSString *path = @"/Users/apple/Desktop/test.txt";
    // 这个方法已经过期，不能解析中文
    // NSString *str1 = [NSString stringWithContentsOfFile:path];
    
    // 定义一个NSError变量
    NSError *error;
    // 指定字符串编码为UTF-8: NSUTF8StringEncoding
    NSString *str1 = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    if (error == nil) { // 没有错误信息
        NSLog(@"读取文件成功：%@", str1);
    } else {
        NSLog(@"读取文件失败：%@", error);
    }
    
    NSURL *url = [NSURL URLWithString:@"file:///Users/apple/Desktop/test.txt"];
    NSString *str2 = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@", str2);
    
    NSURL *url2 = [NSURL URLWithString:@"http://www.baidu.com"];
    NSString *str3 = [NSString stringWithContentsOfURL:url2 encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@", str3);
}

#pragma mark 字符串的导出
void stringExport() {
    NSString *str = @"123456我是字符串！！！！";
    // 如果文件不存在，会自动创建文件
    // 如果文件夹不存在，会直接报错
    NSString *path = @"/Users/apple/Desktop/abc.txt";
    
    NSError *error;
    // 编码指定错误也会报错
    // YES代表要进行原子性操作，也就是会创建一个中间的临时文件
    [str writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:&error];
    if (error) {
        // [error localizedDescription]会返回主要的错误信息
        NSLog(@"写入失败：%@", [error localizedDescription]);
    } else {
        NSLog(@"写入成功");
    }
}

//void test2(int *p) {
//    *p = 9;// a = 9;
//}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        int a = 10;
//        test2(&a);
//        NSLog(@"%i", a);
        
        stringExport();
        
//        NSString *s = @"456";
//        
//        test(&s);
//        
//        NSLog(@"%@", s);
    }
    return 0;
}

