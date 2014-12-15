//
//  Book.m
//  内存管理2-对象之间的内存管理
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Book.h"

@implementation Book

- (id)initWithPrice:(float)price {
    if ( self = [super init] ) {
        _price = price;
    }
    
    return self;
}

- (void)dealloc {
    NSLog(@"book:%f 被销毁了", _price);
    
    [super dealloc];
}
@end
