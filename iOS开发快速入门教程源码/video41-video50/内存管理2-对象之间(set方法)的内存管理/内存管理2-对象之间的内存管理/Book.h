//
//  Book.h
//  内存管理2-对象之间的内存管理
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property float price; // 价格

- (id)initWithPrice:(float)price;
@end
