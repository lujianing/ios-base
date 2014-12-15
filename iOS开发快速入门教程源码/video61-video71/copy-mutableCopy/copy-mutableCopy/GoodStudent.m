//
//  GoodStudent.m
//  copy-mutableCopy
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "GoodStudent.h"

@implementation GoodStudent

+ (id)goodStudentWithAge:(int)age name:(NSString *)name {
    GoodStudent *good = [GoodStudent studentWithName:name];
    
    good.age = age;
    
    return good;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"[name=%@, age=%i]", self.name, _age];
}

- (id)copyWithZone:(NSZone *)zone {
    // 一定要调用父类的方法
    GoodStudent *copy = [super copyWithZone:zone];
    
    copy.age = self.age;
    
    return copy;
}

@end
