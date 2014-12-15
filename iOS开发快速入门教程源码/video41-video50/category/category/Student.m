//
//  Student.m
//  category
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student
- (void)test {
    NSLog(@"调用了test方法");
}
@end

@implementation Student(Addition)
- (void)test3 {
    NSLog(@"调用了test3方法");
}
@end
