//
//  main.c
//  extern和变量
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

// 第一种做法是将a定义在main函数的前面
// int a;

// 完整地声明全部变量a
// extern int a;

// extern是可以省略的
int a;

int a;

int a;

int a;

void test();

int main(int argc, const char * argv[])
{
    // 还是全局变量
    // extern int a;
    
    int a;
    a = 10;
    
    test();
    return 0;
}

// 定义一个变量a
int a;

void test() {
    printf("a = %d", a);
}