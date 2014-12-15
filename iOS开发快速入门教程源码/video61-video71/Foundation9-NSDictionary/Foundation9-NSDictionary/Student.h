//
//  Student.h
//  Foundation9-NSDictionary
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property (nonatomic, retain) NSString *name;

+ (id)studentWithName:(NSString *)name;
@end
