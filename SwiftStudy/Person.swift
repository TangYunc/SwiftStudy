//
//  Person.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/25.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class Person: NSObject {

    var name: String?
    var age: Int = 0
    //重载构造函数
    /**
     1.便利构造函数允许返回nil
     --正常的构造函数一定会创建对象
     --判断给定的参数是否符合条件，如果不符合条件，则直接返回nil，不会创建对象，减少内存开销
     **只有**便利构造函数中使用self.init()构造对象
     没有convenience的关键字的构造函数是负责创建对象的，反之用来检查条件的，本身不负责对象的创建
     如果在便利构造函数中使用当前对象属性，一定要在self.init()之后
     */
    convenience init?(name: String, age: Int) {
        if age > 100 {
            return nil
        }
        //Use of 'self' in property access 'name' before self.init initializes self
        //使用‘self’访问‘name’之前，应调用self.init
//        self.name = name
        //实例化当前对象
        self.init()
        //执行到此。self才能够被访问，才能够访问到对象的属性
        self.name = name
    }
    override init() {
        super.init()
//        self.init()
    }
}
