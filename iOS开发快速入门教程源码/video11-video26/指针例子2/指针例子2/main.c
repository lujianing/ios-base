//
//  main.c
//  指针例子2
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

int sumAndMinus(int v1, int v2, int *p) {
    *p = v1 - v2;
    return v1 + v2;
}

int main(int argc, const char * argv[])
{
    int a = 10;
    int b = 4;
    
    // 接收a跟b的和
    int sum;
    // 接收a跟b的差
    int minus;
    
    sum = sumAndMinus(a, b, &minus);
    
    printf("sum=%d, mimus=%d", sum, minus);
    return 0;
}

