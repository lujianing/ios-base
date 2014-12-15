//
//  main.m
//  Foundation13-NSNull
//
//  Created by mj on 13-4-7.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // [NSNull null]返回的是同一个单粒对象
        NSNull *n = [NSNull null];
        
        NSNull *n1 = [NSNull null];
        
        NSNull *n2 = [NSNull null];

        
        NSNull *n3 = [NSNull null];

        NSLog(@"%i", n == n1);
        
        // {"id":10, "name":"mj", "descs":null}
    }
    return 0;
}

