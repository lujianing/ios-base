//
//  one.c
//  extern与函数
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//
#include <stdio.h>

// 定义一个one函数
// 完整地定义一个外部函数需要extern关键字
//extern void one() {
//    printf("调用了one函数\n");
//}

// 内部函数，需要用static关键字修饰，说明不能在其他文件中访问
static void one() {
    printf("调用了one函数\n");
}
