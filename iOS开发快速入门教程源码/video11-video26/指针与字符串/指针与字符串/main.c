//
//  main.c
//  指针与字符串
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

void test() {
    char s[7] = "itcast";
    
    for (int i = 0; s[i] != '\0'; i++) {
        printf("%c\n", s[i]);
    }
}

void test1() {
    // 定义了一个字符串变量
    char s[7] = "itcast";
    
    char *p = s;
    
    for (; *p != '\0'; p++) {
        printf("%c\n", *p);
    }
}

void test2() {
    // 定义的是字符串常量
    char *p = "itcast";
    
//    char *p;
//    
//    p = "itcast";
    
    for (; *p != '\0'; p++) {
        printf("%c\n", *p);
    }
}

int main(int argc, const char * argv[])
{
    
    
    // test2();
    
    char *s = "lmj";
    
    *s = 'f';
    
    
    return 0;
}

