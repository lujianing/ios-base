//
//  Book.m
//  Foundation7-NSArray2
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Book.h"

@implementation Book

+ (id)bookWithName:(NSString *)name {
    Book *book = [[[Book alloc] init] autorelease];
    book.name = name;
    return book;
}

- (void)dealloc {
    [_name release];
    [super dealloc];
}
@end
