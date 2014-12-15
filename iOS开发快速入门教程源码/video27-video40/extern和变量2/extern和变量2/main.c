//
//  main.c
//  extern和变量2
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

void testA();

//int a;
//
//int a;
//
//int a;

// extern只能用来声明全部变量，不能拿来定义变量
extern int a;

int main(int argc, const char * argv[])
{
    // 修改main.c中的a
    a = 10;
    
    // 调用onec.c中的testA函数
    testA();
    return 0;
}

