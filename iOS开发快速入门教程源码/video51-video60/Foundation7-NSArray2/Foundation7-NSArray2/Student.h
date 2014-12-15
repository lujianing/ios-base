//
//  Student.h
//  Foundation7-NSArray2
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;

@interface Student : NSObject
@property (nonatomic, retain) NSString *firstname; // 名
@property (nonatomic, retain) NSString *lastname; // 姓
@property (nonatomic, retain) Book *book; // 书

+ (id)studentWithFirstname:(NSString *)firstname lastname:(NSString *)lastname;

+ (id)studentWithFirstname:(NSString *)firstname lastname:(NSString *)lastname bookName:(NSString *)bookName;

// 返回值类型为NSComparisonResult
- (NSComparisonResult)compareStudent:(Student *)stu;
@end
