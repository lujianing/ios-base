//
//  main.c
//  printf函数
//
//  Created by mj on 13-3-25.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // insert code here...
    printf("Hello, World!\n");
    
    
    
    printf("My age is %d\n", 26);
    
    // My age is 26，height is 1.55，name is 李明杰，sex is 'A'
    printf("My age is %-4d，height is %-5.2f，name is %s，sex is '%c'",
           26, 1.55f, "李明杰", 'A');
    
    // %.2f代表保留2位小数
    
    // 一个中文会占用至少2个字符
    
    
    
    return 0;
}

