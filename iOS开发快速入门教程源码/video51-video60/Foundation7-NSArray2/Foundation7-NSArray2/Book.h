//
//  Book.h
//  Foundation7-NSArray2
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
@property (nonatomic, retain) NSString *name;

+ (id)bookWithName:(NSString *)name;
@end
