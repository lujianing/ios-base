//
//  Student.h
//  Protocol补充
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Study, Learn;

@interface Student : NSObject <Study, Learn>

@end