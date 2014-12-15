//
//  main.c
//  字符串处理函数
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>
#include <string.h>

// strlen
void test() {
    // 测量字符串常量的字符长度（不包括\0这个字符）
    int len =  strlen("李明杰");
    //printf("%d\n", len);
    
    // 测量字符串变量的字符长度
    char s[] = "lmj";
    //printf("%d\n", strlen(s));
    
    char s1[] = {'m', 'j'};
    
    // 结果是5 内存中的存储是：mjlmj\0
    printf("%d\n", strlen(s1));
}

// strcpy
void test1() {
    char left[10];
    
    // 拷贝"itcast"到数组left中
    strcpy(left, "itcast");
    
    printf("%s", left);
}

// strcat
void test2() {
    char left[10] = {'m', 'j', '\0', 'i', 't', 'c', 'a', '\0'};
    // 从left的第一个\0开始拼接ios这个字符串
    // 拼接的结果是：mjios\0
    strcat(left, "ios");
    // 拼接的结果：mjios\0a\0
    
    printf("%s", left);
}

// strcmp
void test3() {
    int delta = strcmp("abc", "aac");
    printf("%d", delta);
}

int main(int argc, const char * argv[])
{
    test3();
    return 0;
}

