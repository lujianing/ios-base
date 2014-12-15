//
//  Student.m
//  OC的类
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student

- (int)age {
    NSLog(@"调用了getAge方法");
    return age;
}

- (void)setAge:(int)newAge {
    age = newAge;
    
    NSLog(@"调用了setAge方法");
}

- (int)no {
    return no;
}

- (void)setAge:(int)newAge andNo:(int)newNo {
    age = newAge;
    no = newNo;
}
@end