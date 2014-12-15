//
//  main.c
//  第一个C程序
//
//  Created by mj on 13-3-25.
//  Copyright (c) 2013年 itcast. All rights reserved.
//
// 运行程序的快捷键：command + R

// 预处理指令：在编译之前执行的指令
// 系统自带的文件用<>，自己写的文件用""
// .h称为头文件，用来声明一些常用的函数，假如想使用这些函数，就必须包含这个头文件
#include <stdio.h>

#include "test.h"

int main()
{
    // insert code here...
    // 输出字符串到控制台，这个函数声明在stdio.h文件中
    printf("Hello, World!\n");
    
    test();
    
    int c = sum(10, 3);
    
    printf("sum的结果是：%d", c);
    
    return 0;
}


