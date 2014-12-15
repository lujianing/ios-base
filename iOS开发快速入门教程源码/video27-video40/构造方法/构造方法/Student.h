//
//  Student.h
//  构造方法
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject {
    int _age;
    int _no;
}

- (void)setAge:(int)age;
- (int)age;

- (void)setNo:(int)no;
- (int)no;

// 自己写一个构造方法
- (id)initWithAge:(int)age andNo:(int)no;

@end
