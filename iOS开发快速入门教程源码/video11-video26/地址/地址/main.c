//
//  main.c
//  地址
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    char a = 'A'; // 65  占1和字节
    
    int b = 66; // 占4个字节
    
    
    printf("a的地址：%x\n", &a);
    
    printf("b的地址：%x", &b);
    
    return 0;
}

