//
//  main.m
//  property
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

#import "Teacher.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Teacher *tea = [[Teacher alloc] init];
        
        tea.age = 10;
        
        NSLog(@"age is %i", tea.age);
        
        [tea release];
    }
    return 0;
}

