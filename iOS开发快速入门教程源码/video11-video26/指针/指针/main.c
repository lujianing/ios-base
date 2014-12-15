//
//  main.c
//  指针
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

void test() {
    char a;
    // a = 10; 直接引用
    
    // 定义了一个指针变量b，而且b只能指向char类型的变量
    char *b;
    
    // 让指针变量b指向a
    b = &a;
    
    // 这里的*b代表：访问b值对应的存储空间（也就是变量a的存储空间）
    // 相当于a = 10;
    *b = 10;
    
    printf("%d\n", a);
    
    a = 11;
    
    // 这里的*b相当于取出变量a存储的值
    printf("%d\n", *b);
}

void test1() {
    char a = 10;
    
    char *b = &a;
    /* 相当于下面两句
     char *b;
     b = &a;
     */
}

void test2() {
    // 这是错误的做法
    char *p;
    // 应该在指针确定指向的变量后，再进行相应的操作
    *p = 10;
}

void test3() {
    // 这个错发也是错误的
    char *p;
    // 指针变量是用来存储变量地址的，不能随便赋值一个常数，除非你这个常熟恰好是某个变量的地址
    p = 100;
}

int main(int argc, const char * argv[])
{
    
    return 0;
}

