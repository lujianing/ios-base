//
//  main.c
//  条件编译
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

#define NUM -1

int main(int argc, const char * argv[])
{
    
#if NUM > 0
    printf("NUM大于0");
#elif NUM == 0
    printf("NUM等于0");
#else
    printf("NUM小于0");
#endif
    
    return 0;
}

