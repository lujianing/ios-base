//
//  main.c
//  static和变量
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

static int b;

void testA();

extern int a;

int main(int argc, const char * argv[])
{
    a = 10;
    
    testA();
    return 0;
}

int a;

