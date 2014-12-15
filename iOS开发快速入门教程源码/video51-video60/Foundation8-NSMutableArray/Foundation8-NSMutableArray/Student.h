//
//  Student.h
//  Foundation8-NSMutableArray
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic, assign) int age;

+ (id)studentWithAge:(int)age;
@end
