//
//  main.c
//  数组
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

// 数组的定义和存储
void test1() {
    int ages[5]; // 64bit环境下占用4*5=20个字节
    
    // 计算数组占据的存储空间
    // size_t size = sizeof(ages);
    //printf("ages占据的字节：%d", size);
    
    // 查看数组的地址
    // 第1种方式：
    //printf("%d\n", &ages[0]);
    // 第2种方式：
    //printf("%d", ages);
    // 数组名代表的就是数组的地址，也就是第0个元素的地址
    // ages == &ages[0]
    // ages是一个常量
    
    // 查看每一个数组元素的地址
    int i;
    for (i =0; i < 5; i++) {
        printf("ages[%d]的地址：%d\n", i, &ages[i]);
    }
}

// 数组的初始化
void test2() {
    int a[2] = {8, 10};
    
    int b[2];
    b[0] = 8;
    b[1] = 10;
    
    b[10];
}

void test3(int array[]) {
    array[0] = 9;
}

// 测试数组作为函数参数
void test4() {
    int a[5] = {10}; // a[0] = 10;
    
    printf("调用函数之前的a[0]=%d\n", a[0]);
    
    test3(a);
    
    printf("调用函数之后的a[0]=%d\n", a[0]);
    
}

// 二维数组的定义和存储
void test5() {
    int a[2][3]; // 由a[0]和a[1]组成
    
    printf("数组的地址1：%d\n", a);
    
    printf("数组的地址2：%d\n", &a[0][0]);
    
    // a[0]也是个数组，所以a[0]就是数组名，就是代表着这个数组的地址
    printf("数组的地址3：%d\n", a[0]);
    
    printf("%d", &a[1][0]);
}

// 二维数组的初始化
void test6() {
    int a[2][3] = {{1, 2, 3}, {4, 5, 6}};
    
    int b[2][3] = {1, 2, 3, 4};
    
    int c[][4] = {1, 2, 3, 4, 5};
    // a[0][0] = 1;  a[0][1] = 2; a[0][2] = 3;
    // a[1][0] = 4; a[1][1] = 5;
}

int main(int argc, const char * argv[])
{
    
    return 0;
}

