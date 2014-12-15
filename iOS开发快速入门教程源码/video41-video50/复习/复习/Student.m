//
//  Student.m
//  复习
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student


- (void)setAge:(int)newAge {
    _age = newAge;
}

- (int)age {
    return _age;
}

- (id)initWithAge:(int)newAge {
    if ( self = [super init] ) {
        _age = newAge;
    }
    
    return self;
}

@end
