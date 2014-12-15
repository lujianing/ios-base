//
//  main.c
//  指针-数组-函数参数
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

// 这个函数用来修改数组的第一个元素
void change(char c[]) {
    c[0] = 1;
}

void change2(char *c) {
    // *(c+2) = 10; 修改a[2]的值
    
    c[2] = 10;
}

int main(int argc, const char * argv[])
{
    char a[3];
    
    //char *p = a;
    
    change2(a);
    
    printf("a[2]=%d", a[2]);
    
    return 0;
}

