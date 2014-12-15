//
//  Student.h
//  内存管理3-@property的参数
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;
@class Card;

@interface Student : NSObject

// 这里的retain代表：在set方法中，release旧值，retain新值
@property (nonatomic, retain) Book *book;

@property (retain) Card *card;

// readonly代表只生成get方法的声明
// 默认是readwrite，同时生成get和set方法的声明
@property (readonly) int age;

// atomic就代表给方法进行加锁，保证线程安全
@property (atomic) int no;

// nonatomic代表方法不需要考虑线程安全问题
@property (nonatomic, assign) int no2;

// getter是用来指定get方法的方法名
@property (nonatomic, getter = isRich) BOOL rich;
@end
