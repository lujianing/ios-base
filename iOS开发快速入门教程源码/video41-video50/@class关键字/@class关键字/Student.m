//
//  Student.m
//  @class关键字
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"
#import "Book.h"

@implementation Student

- (void)setBook:(Book *)book {
    if (_book != book) {
        [_book release];
        _book = [book retain];
        
        // [book retain];
        // _book = book;
    }
}

- (Book *)book {
    return _book;
}

- (void)dealloc {
    // self.book = nil;
    
    // [self setBook:nil];
    
    [_book release];
    [super dealloc];
}
@end
