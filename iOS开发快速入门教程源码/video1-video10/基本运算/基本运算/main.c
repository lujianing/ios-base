//
//  main.c
//  基本运算
//
//  Created by mj on 13-3-25.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    //int a = 5;
    //int b = 4;
    
//    if (a < b) {
//        printf("a小于b");
//    } else {
//        printf("a大于或等于b");
//    }
    
    // int c = a < b;
    // printf("%d", c);
    
//    if (3 == a) {
//        printf("条件成立");
//    } else {
//        printf("条件不成立");
//    }
    
    int a = 2;
    int b = 0;
    int c;
    
    c = (++a, a *= 2, b = a * 5);
    
    // printf("c = %d", c);
    char d = 'A';
    size_t size =  sizeof(double);
    printf("%d", size);
    
    return 0;
}

