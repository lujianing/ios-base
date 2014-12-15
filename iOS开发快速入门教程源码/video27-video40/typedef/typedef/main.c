//
//  main.c
//  typedef
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>



// #define Integer int
// 给基本数据类型起别名
void test() {
    typedef int Integer;
    
    typedef Integer MyInteger;
    
    typedef unsigned int UInteger;
    
    int a = 10;
    
    Integer b = 9;
    
    UInteger c = 11;
    
    MyInteger d = 89;
}

// 给指针类型起别名
void test1() {
    char *s = "itcast";
    
    typedef char * String;
    
    String s1 = "itcast";
}

void test2() {
//    struct MyPoint {
//        float x;
//        float y;
//    };
//    struct MyPoint p = {10, 10};
    
    
    typedef struct {
        float x;
        float y;
    } Point;
    
    Point p = {10, 10};
}

void test3() {
    typedef struct {
        float x;
        float y;
    } Point;
    
    typedef Point * PP;
    
//    typedef struct Point {
//        float x;
//        float y;
//    } * PP;
    
    Point point = {10.0f, 20.0f};
    
    PP pp = &point;
    
    printf("x=%f, y=%f\n", pp->x, pp->y);
}

void test4() {
    typedef enum {
        spring,
        summer,
        autumn,
        winter
    } Season;
    
    Season s = spring;
}

int sum(int a, int b) {
    int c = a + b;
    printf("%d+%d=%d\n", a, b, c);
    return c;
}

// 给指向函数的指针定义一个别名SumPoint
void test5() {
    typedef int (*SumPoint)(int, int);
    
    SumPoint p = sum;
    
    (*p)(4, 5);
}

void test6() {
    typedef char * String1;
    #define String2 char *
    
    String1 s1,s2;
//    String1 s1;
//    String1 s2;
    
    String2 s3,s4;
//    char *s3, s4;
//    char *s3;
//    char s4;
}

int main(int argc, const char * argv[])
{
    
    int a, b;
    
//    int a;
//    int b;
    
    return 0;
}

