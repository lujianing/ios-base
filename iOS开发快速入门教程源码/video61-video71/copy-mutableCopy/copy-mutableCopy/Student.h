//
//  Student.h
//  copy-mutableCopy
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject <NSCopying>

// copy代表set方法会release旧对象、copy新对象
// 修改外面的变量，并不会影响到内部的成员变量
// 建议：NSString一般用copy策略，其他对象一般用retain
@property (nonatomic, copy) NSString *name;

+ (id)studentWithName:(NSString *)name;

@end
