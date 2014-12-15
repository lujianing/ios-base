//
//  main.c
//  枚举
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

void test() {
    // 定义一种枚举类型
    enum Season {spring, summer, autumn, winter};
    
    // 定义一个枚举变量s
    enum Season s = winter;
}

void test1() {
    // 定义枚举类型的同时定义一个枚举变量s
    enum Season {spring, summer, autumn, winter} s = spring;
}

void test2() {
    enum {spring = 3, summer, autumn, winter} s = winter;
    
    printf("%d", s);
}

int main(int argc, const char * argv[])
{
    
    
    test2();
    
    return 0;
}

