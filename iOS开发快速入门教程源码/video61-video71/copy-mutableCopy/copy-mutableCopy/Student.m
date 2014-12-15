//
//  Student.m
//  copy-mutableCopy
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (id)studentWithName:(NSString *)name {
    // 这里最好写[self class]
    Student *stu = [[[[self class] alloc] init] autorelease];
    stu.name = name;
    
    return stu;
}

- (void)dealloc {
    [_name release];
    
    [super dealloc];
}

#pragma mark description方法内部不能打印self，不然会造成死循环
- (NSString *)description {
    return [NSString stringWithFormat:@"[name=%@]", _name];
}

#pragma mark copying协议的方法
// 这里创建的副本对象不要求释放
- (id)copyWithZone:(NSZone *)zone {
    Student *copy = [[[self class] allocWithZone:zone] init];
    
    // 拷贝名字给副本对象
    copy.name = self.name;
    
    return copy;
}

@end
