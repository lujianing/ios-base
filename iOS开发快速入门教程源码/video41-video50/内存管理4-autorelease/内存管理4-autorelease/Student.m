//
//  Student.m
//  内存管理4-autorelease
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)dealloc {
    NSLog(@"%@被销毁", self);
    [super dealloc];
}

+ (id)student {
    return [[[Student alloc] init] autorelease];
}

+ (id)studentWithAge:(int)age {
    // 这里的self指向类名
    // Student *stu = [self student];
    Student *stu = [Student student];
    stu.age = age;
    return stu;
}
@end
