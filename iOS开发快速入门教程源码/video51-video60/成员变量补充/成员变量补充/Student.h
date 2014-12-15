//
//  Student.h
//  成员变量补充
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject {
//    @public
//    @protected
//    @private
    
    // 默认的作用域是@protected
    int age;
    
    @protected
    int no;
    
    @public
    float height;
}

@property (nonatomic, assign) int age;
@end
