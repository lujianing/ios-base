//
//  Student.m
//  Foundation7-NSArray2
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"
#import "Book.h"

@implementation Student

+ (id)studentWithFirstname:(NSString *)firstname lastname:(NSString *)lastname {
    Student *stu = [[[Student alloc] init] autorelease];
    
    stu.lastname = lastname;
    stu.firstname = firstname;
    
    return stu;
}

+ (id)studentWithFirstname:(NSString *)firstname lastname:(NSString *)lastname bookName:(NSString *)bookName {
    Student *stu = [Student studentWithFirstname:firstname lastname:lastname];
    
    stu.book = [Book bookWithName:bookName];
    
    return stu;
}

- (NSComparisonResult)compareStudent:(Student *)stu {
    // 先按照姓排序
    NSComparisonResult result = [self.lastname compare:stu.lastname];
    // 如果有相同的姓，就比较名字
    if (result == NSOrderedSame) {
        result = [self.firstname compare:stu.firstname];
    }
    
    return result;
}

- (void)dealloc {
    [_firstname release];
    [_lastname release];
    [_book release];
    [super dealloc];
}

- (NSString *)description {
    // Li MingeJie
    
   return [NSString stringWithFormat:@"[%@ %@-%@]", self.lastname, self.firstname, self.book.name];
}
@end
