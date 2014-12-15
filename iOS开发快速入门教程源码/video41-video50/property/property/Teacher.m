//
//  Teacher.m
//  property
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

// 在xcode4.5的环境下，可以省略@synthesize，并且默认会去访问_age这个成员变量
// 如果找不到_age这个成员变量，会自动生成一个叫做_age的私有成员变量

-(void)test {
    
    _age = 10;
}
@end
