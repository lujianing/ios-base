//
//  main.c
//  结构体
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#include <stdio.h>

void test() {
    // 这个机构只能在函数内部使用
    // 定义一个名为Student的结构体类型
    struct Student {
        int age; // 年龄
        char *name; // 姓名
        float height; // 身高
    };
    
    // 定义一个结构体变量
    struct Student stu = {27, "mj", 1.8f};
    // 下面这行的初始化是错误的
    // stu = {27, "mj", 18.0f};
    
    stu.age = 28;
    
    printf("age=%d\n", stu.age);
    printf("name=%s\n", stu.name);
    printf("height=%.1f\n", stu.height);
}

void test1() {
    struct Student {
        int age; // 年龄
        char *name; // 姓名
        float height; // 身高
    } stu = {27, "mj", 1.8f};
    
    struct Student stu1 = {28, "lmj", 1.9f};
    
    
    struct {
        int age; // 年龄
        char *name; // 姓名
        float height; // 身高
    } stu2 = {27, "mj", 1.8f};
    
    struct {
        int age; // 年龄
        char *name; // 姓名
        float height; // 身高
    } stu3 = {27, "mj", 1.8f};
}

void test2() {
    // 定义一个Date结构体
    struct Date {
        int year;
        int month;
        int day;
    };
    
    // 定义一个学生结构体
    struct Student {
        int age;
        struct Date birthday;
    };
    
    struct Student stu = {27, {2009, 10, 10}};
    
    printf("age=%d\n", stu.age);
    printf("year=%d\n", stu.birthday.year);
    printf("month=%d\n", stu.birthday.month);
    printf("day=%d\n", stu.birthday.day);
}

void test3() {
//    struct Student {
//        int age; // 年龄
//        char *name; // 姓名
//        float height; // 身高
//    };
//    struct Student a[2] = {{27, "mj", 1.8f}, {28, "lmj", 1.9f}};
    
    struct Student {
        int age; // 年龄
        char *name; // 姓名
        float height; // 身高
    } a[2] = {{27, "mj", 1.8f}, {28, "lmj", 1.9f}};
    
    struct Student a2[4];
}

struct Person {
    int age;
};

void change(struct Person p) {
    p.age = 9;
}
// 结构体作为函数参数
void test4() {
    struct Person person = {27};
    change(person);
    
    printf("age=%d", person.age);
}

// 指向结构体的指针
void tets5() {
    // 定义一个结构体变量
    struct Person person = {27};
    // 定义一个指向结构体的指针
    struct Person *p;
    // 让指针p指向结构体person
    p = &person;
    
    printf("age=%d\n", person.age);
    printf("age=%d\n", (*p).age);
    printf("age=%d\n", p->age);
}

int main(int argc, const char * argv[])
{
    tets5();
    return 0;
}

