//
//  Student.h
//  category
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
- (void)test;
@end

@interface Student(Addition)
- (void)test3;
@end