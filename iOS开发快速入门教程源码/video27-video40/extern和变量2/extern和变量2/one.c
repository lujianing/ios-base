//
//  one.c
//  extern和变量2
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

// 如果在不同的源文件中，存在同名的全局变量，那么这些变量都代表着同一个变量
int a;

// 默认情况下定义的变量，都是外部变量
//int a;
//
//int a;

void testA() {
    printf("one.c中的a=%d\n", a);
}