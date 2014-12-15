//
//  Student.h
//  @class关键字
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Book;

@interface Student : NSObject {
    Book *_book;
}

@property Book *book;

@end
