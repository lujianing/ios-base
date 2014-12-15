//
//  Student.m
//  Foundation8-NSMutableArray
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (id)studentWithAge:(int)age {
    Student *stu = [[[Student alloc] init] autorelease];
    stu.age = age;
    return stu;
}

- (void)dealloc {
    NSLog(@"[age=%i]被销毁了", _age);
    [super dealloc];
}
@end
