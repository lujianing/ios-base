//
//  main.c
//  指针例子1
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>


//void swap(char v1, char v2) {
//    printf("交换之前之前：v1=%d,v2=%d\n", v1, v2);
//    
//    char temp;
//    
//    temp = v1;
//    v1 = v2;
//    v2 = temp;
//    
//    printf("调用函数之后：v1=%d,v2=%d\n", v1, v2);
//}

void swap(char *v1, char *v2) {
    char temp;
    
    temp = *v1;
    *v1 = *v2;
    *v2 = temp;
}

int main(int argc, const char * argv[])
{
    char a = 10;
    char b = 9;
    
    printf("调用函数之前：a=%d,b=%d\n", a, b);
    
    swap(&a, &b);
    
    printf("调用函数之后：a=%d,b=%d\n", a, b);
    return 0;
}

