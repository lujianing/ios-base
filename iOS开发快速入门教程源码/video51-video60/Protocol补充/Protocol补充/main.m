//
//  main.m
//  Protocol补充
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@protocol Study;

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Student *stu = [[[Student alloc] init] autorelease];
        
        // 注意：OC是弱语法的，对类型要求不严格
        // NSString *stu = [[[Student alloc] init] autorelease];
        // [stu stringByAbbreviatingWithTildeInPath];
        
        // conformsToProtocol:判断是否遵守了某个协议
        if ([stu conformsToProtocol:@protocol(Study)]) {
            NSLog(@"Student遵守了Study这个协议");
        }
        
        // respondsToSelector:判断是否实现了某个方法
        if ( ![stu respondsToSelector:@selector(test)] ) {
            NSLog(@"Student没有实现test这个方法");
        }
    }
    return 0;
}

