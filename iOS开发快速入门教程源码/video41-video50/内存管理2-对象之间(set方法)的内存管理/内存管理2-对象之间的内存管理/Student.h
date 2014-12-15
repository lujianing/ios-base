//
//  Student.h
//  内存管理2-对象之间的内存管理
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface Student : NSObject {
    Book *_book;
}

@property int age;

- (id)initWithAge:(int)age;

@property Book *book;

- (void)readBook;
@end
