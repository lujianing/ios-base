//
//  test.c
//  第一个C程序
//
//  Created by mj on 13-3-25.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

// 定义一个函数，用来计算2个整数的和
int sum(int a, int b) {
    int c = a + b;
    // 10 + 3 = 13
    printf("%d + %d = %d\n", a, b, c);
    
    return c;
}

// "定义"一个test函数
void test() {
    printf("调用了test函数\n");
}
