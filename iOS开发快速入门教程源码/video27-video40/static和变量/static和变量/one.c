//
//  one.c
//  static和变量
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>
// 如果在不同源文件出现了同名的内部变量，那么这些变量将互不干扰
static int b;

// 用static修饰的全部变量，可以称为内部变量
static int a;

void testA() {
    printf("one.c中的a=%d\n", a);
}
