//
//  main.c
//  指针类型
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 2;
    
    char c = 1;
    
    int *p = &c;
    
    printf("c的值为：%d", *p);
    return 0;
}

