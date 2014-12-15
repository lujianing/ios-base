//
//  main.c
//  字符串
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

// 字符串的定义和初始化
void test() {
    // "mj"
    char s[] = {'m', 'j', '\0'}; // 字符串"mj"
    
    char s1[3] = {'m', 'j', '\0'}; // 字符串"mj"
    
    char s2[3] = {'m', 'j'}; // 并不是正规的字符串
    
    char s3[] = "mj"; // 字符串"mj",会自动在尾部加上一个\0
}

// 输出字符串
void test1() {
    char s[] = "mj";
    printf("%s\n", s);
    printf("%s\n", "lmj");
    
    // printf可以输出多个字符串
    printf("%s %s %s\n", "mj", "lmj", "ios");
    
    // puts只能输出一个字符串,puts会自动换行
    puts("ios");
    
    puts("ios");
}

// 输出字符串2：\0的作用
void test2() {
    char s1[] = {'l', 'm', 'j', '\0'};
    // puts(s1);
    
    char s2[] = {'m', 'j'};
    
    // 打印一个字符串
    // puts(s2);
    printf("%s", s1);
}

// 字符串的输入
void test3() {
    // itcast mj
    
    char s2[] = "mj";
    
    char s1[2];
    // s1就是数组的地址，所以不用&s
    // 输入完毕后，会自动在s1的尾部加一个\0
    // scanf("%s", s1);
    
    // 从s1这个地址开始赋值用户输入的字符序列
    // 在尾部会自动加上一个\0
    gets(s1);
    
    // 输出用户输入的字符串
    printf("s1 = %s\n", s1);
    
    printf("s2 = %s", s2);
}

int main(int argc, const char * argv[])
{
    
    test3();
    return 0;
}

