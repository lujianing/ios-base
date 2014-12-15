//
//  main.c
//  指针与一维数组
//
//  Created by mj on 13-3-26.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

void test() {
    int a[2];
    
    int *p;
    
    // p = &a[0];
    p = a;
    
    *p = 10;
    
    printf("%d", a[0]);
}

void test1() {
    int a[3] = {1, 2, 3};
    
    for (int i = 0; i<3; i++) {
        printf("a[%d]=%d\n", i, a[i]);
    }
}

void test2() {
    char a[3] = {1, 2, 3};
    // 让指针指向第一个元素
    char *p = a;
    
    for (int i = 0; i<3; i++) {
        printf("a[%d]=%d\n", i, *(p+i));
    }
}

void test3() {
    int a[3] = {1, 2, 3};
    // 让指针指向第一个元素
    int *p = a;
    
//    p == ffc1
//    p + 1 == ffc3
//    p + 2 == ffc5
    
    // 遍历完数组后，p的值并没有变过
    for (int i = 0; i<3; i++) {
        printf("a[%d]=%d\n", i, *(p+i));
    }
}

void test4() {
    int a[3] = {1, 2, 3};
    // 让指针指向第一个元素
    int *p = a;
    
    // 在遍历数组的过程中，指针的值一直在改变
    for (int i = 0; i<3; i++) {
        printf("a[%d]=%d\n", i, *(p++));
    }
}

void test5() {
    int a[3] = {1, 2, 3};
    
//    a == ffc1;
//    a + 1 == ffc3
//    a + 2 == ffc5
    
    // 不能够写成a++，因为a是个常量
    for (int i = 0; i<3; i++) {
        printf("a[%d]=%d\n", i, *(a + i));
    }
}

void test6() {
    int a[3] = {1, 2, 3};
    // 让指针指向第一个元素
    int *p = a;
    
//    p == a == ffc1
//    p++ == a + 1 == ffc3
//    p++ == a + 2 == ffc5
    
    // 在遍历数组的过程中，指针的值一直在改变
    for (int i = 0; p < a + 3; i++, p++) {
        printf("a[%d]=%d\n", i, *p);
    }
}

int main(int argc, const char * argv[])
{
    
    test6();
    return 0;
}

