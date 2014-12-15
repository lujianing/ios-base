//
//  GoodStudent.h
//  copy-mutableCopy
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@interface GoodStudent : Student

@property (nonatomic, assign) int age;

+ (id)goodStudentWithAge:(int)age name:(NSString *)name;
@end
