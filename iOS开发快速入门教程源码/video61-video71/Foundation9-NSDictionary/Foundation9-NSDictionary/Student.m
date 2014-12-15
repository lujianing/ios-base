//
//  Student.m
//  Foundation9-NSDictionary
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (id)studentWithName:(NSString *)name {
    Student *stu = [[Student alloc] init];
    stu.name = name;
    return [stu autorelease];
}

- (void)dealloc {
    NSLog(@"%@被销毁了", _name);
    // 释放name
    [_name release];
    [super dealloc];
}
@end
