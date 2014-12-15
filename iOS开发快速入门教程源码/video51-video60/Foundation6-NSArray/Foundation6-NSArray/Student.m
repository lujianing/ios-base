//
//  Student.m
//  Foundation6-NSArray
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student

+ (id)student {
    return [[[Student alloc] init] autorelease];
}

- (void)test {
    NSLog(@"%@-》test", self);
}

- (void)test2:(NSString *)str {
    NSLog(@"%@->test2->%@", self, str);
}

- (void)dealloc {
    NSLog(@"%@被销毁了", self);
    [super dealloc];
}
@end
