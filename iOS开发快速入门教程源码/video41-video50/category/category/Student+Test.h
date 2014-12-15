//
//  Student+Test.h
//  category
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

// ()代表着是一个分类
// ()中的Test代表着分类的名称
@interface Student (Test)
// 分类只能扩展方法，不能增加成员变量

- (void)test2;
@end
