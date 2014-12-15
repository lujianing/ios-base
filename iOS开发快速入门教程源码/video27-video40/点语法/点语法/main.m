//
//  main.m
//  点语法
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Person *person = [[Person alloc] init];
        
        person.age = 10; // 等效于[person setAge:10];
        
        int age = person.age; // 等效于int age = [person age];
        
        NSLog(@"age is %i", age);
        
        [person release];
    }
    return 0;
}

