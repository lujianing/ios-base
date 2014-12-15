//
//  main.c
//  宏定义
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

// NUM叫做宏名
// 6是用来替换宏名的字符串
#define NUM 6

#define mul(a, b) ((a)*(b))


void test() {
    // 双引号中的NUM并不会被替换为6
    char *s = "NUMBER";
    
    
    
    int a[NUM] = {1,2,3,4,5,6};
    
    for (int i = 0; i<NUM; i++) {
        printf("a[%d] = %d\n", i , a[i]);
    }
}

int main(int argc, const char * argv[])
{
    int a = mul(10, 10) / mul(2, 2);
    // mul(a, b) (a)*(b)
    // (10 * 10) / (2 * 2)
    printf("%d", a);
    return 0;
}

