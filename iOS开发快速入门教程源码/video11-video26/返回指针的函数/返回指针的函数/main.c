//
//  main.c
//  返回指针的函数
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

char * test() {
    return "itcast";
}

int main(int argc, const char * argv[])
{
    printf("%s", test());
    return 0;
}

