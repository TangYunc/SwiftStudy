//
//  Book.m
//  SwiftStudy
//
//  Created by 中发 on 2018/5/24.
//  Copyright © 2018年 中发. All rights reserved.
//

#import "Book.h"

@interface Book()
@property (nonatomic, copy) NSString *bookName;
@end

@implementation Book

- (instancetype)init
{
    //调用父类的方法，给父类初始化
    self = [super init];
    //为什么要用if？因为可能初始化错误，无法创建父类
    if (self) {
        _bookName = @"iPhone";
    }
    return self;
}
@end
