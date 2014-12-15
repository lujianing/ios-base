//
//  main.m
//  category
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Student.h"

#import "Student+Test.h"

#import "NSString+JSON.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student *stu = [[[Student alloc] init] autorelease];
        
        [stu test];
        
        [stu test2];
        
        [stu test3];
        
        NSLog(@"%@", [NSString json]);
    }
    return 0;
}

