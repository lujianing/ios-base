//
//  Book.m
//  @class关键字
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Book.h"

@implementation Book
- (void)dealloc {
    NSLog(@"Book被销毁了");
    
    [super dealloc];
}
@end
