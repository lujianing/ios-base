//
//  main.c
//  指向函数的指针
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

int sum(int a, int b) {
    int c = a + b;
    
    printf("%d + %d = %d\n", a, b, c);
    
    return c;
}

int minus(int a, int b) {
    return a - b;
}

int mul(int a, int b) {
    return a * b;
}

// count函数是用来做a跟b之间的运算
// 至于做什么运算，取决于p
int count(int a, int b, int (*p)(int, int)) {
    return p(a, b);
}

int main(int argc, const char * argv[])
{
    
    int result = count(5, 6, mul);
    
    printf("result:%d", result);
    
//    // 定义了一个指向函数的指针变量p
//    // 被p指向的函数：返回值为int类型，接收两个int类型的参数
//    int (*p)(int, int);
//    
//    // 让指针变量p指向sum函数
//    p = sum;
//    
//    // 利用指针变量p间接调用sum函数
//    // (*p)(5, 6);
//    p(5, 6);
    return 0;
}

