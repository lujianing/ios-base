//
//  Student.m
//  内存管理1-retain和release的简单使用
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student
@synthesize age = _age; // 在xcode4.5环境下可以省略

- (void)dealloc {
    NSLog(@"%@被销毁了", self);
    
   [super dealloc];
    // 一定要调用super的dealloc方法，而且最好放在最后面调用
}
@end
