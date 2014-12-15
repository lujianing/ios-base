//
//  Student.h
//  内存管理4-autorelease
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic, assign) int age;

+ (id)student;

+ (id)studentWithAge:(int)age;
@end
