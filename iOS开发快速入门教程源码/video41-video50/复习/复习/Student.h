//
//  Student.h
//  复习
//
//  Created by mj on 13-4-4.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject {
    // 默认是@protected
    int _age;
}

- (void)setAge:(int)newAge;
- (int)age;

// - (Student *)initWithAge:(int)newAge;

- (id)initWithAge:(int)newAge;

@end
