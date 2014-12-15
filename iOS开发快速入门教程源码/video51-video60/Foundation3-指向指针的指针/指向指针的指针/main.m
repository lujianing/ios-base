//
//  main.m
//  指向指针的指针
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

void changeC(char *d) {
    *d = 9;
}

void changeStr(NSString **str2) {
    *str2 = @"123";
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
//        char c = 10;
//        
//        changeC(&c);
//        
//        NSLog(@"%i", c);
        
        NSString *str = @"456";
        
        changeStr(&str);
        
        NSLog(@"%@", str);
    }
    return 0;
}

