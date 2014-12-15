//
//  main.c
//  extern与函数
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

// 提前声明内部的one函数
static void one();


int main(int argc, const char * argv[])
{
    one();
    return 0;
}

// 定义了一个内部函数，这跟one.c中one函数是互不干扰
static void one() {
    
}