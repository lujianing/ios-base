//
//  main.c
//  scanf函数
//
//  Created by mj on 13-3-25.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

void test1() {
    // 1.提示用户输入数据
    printf("请输入一个整数：");
    
    // 2.接收用户输入的数据
    int a;
    // &a代表变量a的地址
    // 输入完毕后敲回车
    scanf("%d", &a);
    
    // 3.计算a的平方
    printf("%d的平方为：%d", a, a * a);
}

void test2() {
    // 1.提示用户输入数据
    printf("请输入两个整数：");
    
    // 2.接收用户输入的数据
    int a, b;
    // &a代表变量a的地址
    // 输入完毕后敲回车
    scanf("%d %d", &a, &b);
    
    // 3.计算a+b
    printf("%d + %d = %d", a, b, a + b);
}

int main(int argc, const char * argv[])
{
    test2();
    return 0;
}

