//
//  Student.m
//  构造方法
//
//  Created by mj on 13-3-28.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)setAge:(int)age {
    _age = age;
}

- (void)setNo:(int)no {
    _no = no;
}

- (int)age {
    return _age;
}

- (int)no {
    return _no;
}
// 实现构造方法
- (id)initWithAge:(int)age andNo:(int)no {
    // 首先要调用super的构造方法
    // self = [super init];
    
    // 如果self不为nil
    if (self = [super init]) {
        // _age = age;
        // _no = no;
        self.age = age;
        self.no = no;
    }
    
    return self;
}

// 重写父类的description方法
// 当使用%@带打印一个对象的时候，会调用这个方法
- (NSString *)description {
    NSString *str = [NSString stringWithFormat:@"age is %i and no is %i", self.age, self.no];
    return str;
}

// 如果直接把方法写在.m文件中，没有在.h文件中进行声明，那么这就是私有方法

// 谁调用方法，self就指向谁
- (void)test {
    int age = self.age;
}

+ (void)test2 {
    [Student alloc];
    
    [self alloc];
    
    // 上面两句代码是等效的
}
@end
