//
//  Book.h
//  @class关键字
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

// 如果是继承某个类，就要导入类的头文件
// 如果只是定义成员变量、属性，用@class

@interface Book : NSObject
@property int price;
@end
