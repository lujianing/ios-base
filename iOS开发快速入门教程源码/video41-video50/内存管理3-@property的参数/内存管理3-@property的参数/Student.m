//
//  Student.m
//  内存管理3-@property的参数
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"
#import "Book.h"
#import "Card.h"

@implementation Student

//- (void)setBook:(Book *)book {
//    if (_book != book) {
//        [_book release];
//        _book = [book retain];
//    }
//}
//
//- (void)setCard:(Card *)card {
//    if (_card != card) {
//        [_card release];
//        _card = [card retain];
//    }
//}

- (void)dealloc {
    NSLog(@"Student被销毁了");
    [_book release];
    //self.book = nil;
    [_card release];
    //self.card = nil;
    [super dealloc];
}
@end
