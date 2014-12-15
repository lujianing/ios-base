//
//  main.m
//  Foundation7-NSArray2
//
//  Created by mj on 13-4-5.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

#pragma mark 派生出新的数组
void arrayNew() {
    NSArray *array = [NSArray arrayWithObjects:@"1", @"2", nil];
    
    NSArray *array2 = [array arrayByAddingObject:@"3"];
    
    NSArray *array3 = [array arrayByAddingObjectsFromArray:[NSArray arrayWithObjects:@"4", @"5", nil]];
    
    NSLog(@"array:%@", array);
    NSLog(@"array2:%@", array2);
    NSLog(@"array3:%@", array3);
    
    
    NSArray *array4 = [NSArray arrayWithObjects:@"1", @"2", @"3", @"4", nil];
    NSRange range = NSMakeRange(1, 2);
    NSArray *array5 = [array4 subarrayWithRange:range];
    NSLog(@"array5:%@", array5);
}

#pragma mark 数组的其他用法
void arrayOther() {
    NSArray *array = [NSArray arrayWithObjects:@"1", @"2", @"3", @"4", nil];
    // 1-2-3-4
    // 利用分隔符-拼接所有的数组元素
    NSString *str = [array componentsJoinedByString:@"-"];
    NSLog(@"%@", str);
    
    // 将一个数组写入文件（生成的是一个xml文件）
    NSString *path = @"/Users/apple/Desktop/array.xml";
    [array writeToFile:path atomically:YES];
    
    
    path = @"/Users/apple/Desktop/array.txt";
    // 从文件中读取数组内容（文件有严格的格式要求）
    NSArray *array2 = [NSArray arrayWithContentsOfFile:path];
    NSLog(@"array2:%@", array2);
}

#pragma mark 数组排序1
void arraySort1() {
    NSArray *array = [NSArray arrayWithObjects:@"2", @"3", @"1", @"4", nil];
    
    // 返回一个排好序的数组，原来数组的元素顺序不会改变
    // 指定元素的比较方法：compare:
    NSArray *array2 = [array sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"array2:%@", array2);
}

#pragma mark 数组排序2
void arraySort2() {
    Student *stu1 = [Student studentWithFirstname:@"MingJie" lastname:@"Li"];
    Student *stu2 = [Student studentWithFirstname:@"LongHu" lastname:@"Huang"];
    Student *stu3 = [Student studentWithFirstname:@"LianJie" lastname:@"Li"];
    Student *stu4 = [Student studentWithFirstname:@"Jian" lastname:@"Xiao"];
    NSArray *array = [NSArray arrayWithObjects:stu1,stu2,stu3, stu4, nil];
    
    // 指定排序的比较方法
    NSArray *array2 = [array sortedArrayUsingSelector:@selector(compareStudent:)];
    
    NSLog(@"array2:%@", array2);
}

#pragma mark 数组排序3
void arraySort3() {
    Student *stu1 = [Student studentWithFirstname:@"MingJie" lastname:@"Li"];
    Student *stu2 = [Student studentWithFirstname:@"LongHu" lastname:@"Huang"];
    Student *stu3 = [Student studentWithFirstname:@"LianJie" lastname:@"Li"];
    Student *stu4 = [Student studentWithFirstname:@"Jian" lastname:@"Xiao"];
    NSArray *array = [NSArray arrayWithObjects:stu1,stu2,stu3, stu4, nil];
    
    // 利用block进行排序
    NSArray *array2 = [array sortedArrayUsingComparator:
     ^NSComparisonResult(Student *obj1, Student *obj2) {
         // 先按照姓排序
         NSComparisonResult result = [obj1.lastname compare:obj2.lastname];
         // 如果有相同的姓，就比较名字
         if (result == NSOrderedSame) {
             result = [obj1.firstname compare:obj2.firstname];
         }
         
         return result;
    }];
    
    NSLog(@"array2:%@", array2);
}

#pragma mark 数组排序4-高级排序
void arraySort4() {
    Student *stu1 = [Student studentWithFirstname:@"MingJie" lastname:@"Li" bookName:@"book1"];
    Student *stu2 = [Student studentWithFirstname:@"LongHu" lastname:@"Huang" bookName:@"book2"];
    Student *stu3 = [Student studentWithFirstname:@"LianJie" lastname:@"Li" bookName:@"book2"];
    Student *stu4 = [Student studentWithFirstname:@"Jian" lastname:@"Xiao" bookName:@"book1"];
    NSArray *array = [NSArray arrayWithObjects:stu1,stu2,stu3, stu4, nil];
    
    // 1.先按照书名进行排序
    // 这里的key写的是@property的名称
    NSSortDescriptor *bookNameDesc = [NSSortDescriptor sortDescriptorWithKey:@"book.name" ascending:YES];
    // 2.再按照姓进行排序
    NSSortDescriptor *lastnameDesc = [NSSortDescriptor sortDescriptorWithKey:@"lastname" ascending:YES];
    // 3.再按照名进行排序
    NSSortDescriptor *firstnameDesc = [NSSortDescriptor sortDescriptorWithKey:@"firstname" ascending:YES];
    // 按顺序添加排序描述器
    NSArray *descs = [NSArray arrayWithObjects:bookNameDesc, lastnameDesc, firstnameDesc, nil];
    
    NSArray *array2 = [array sortedArrayUsingDescriptors:descs];
    
    NSLog(@"array2:%@", array2);
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        arraySort4();
    }
    return 0;
}

