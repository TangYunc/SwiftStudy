//
//  Person.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/24.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit
/**
 给自己的 属性分配空间并且设置初始值
 调用父类的‘构造函数’，给父类的属性分配空间设置初始值
 NSObject没有属性，只有一个成员变量‘isa‘
 */

//Class 'Person' has no initializers
//'Person'类没有‘初始化器’s，构造函数，可以有多个，默认的是init()
class Person: NSObject {

    var name: String
    //Overriding declaration requires an 'override' keyword
    //重‘写’->父类有这个方法，子类重新实现，需要'override'关键字
    //Property 'self.name' not initialized at implicit
    //implicit(隐式生成的super.init)调用父类的构造函数之前，属性'self.name'没有初始化
    override init() {
        name = "TYC"
        //Property 'self.name' not initialized at super.init call
        //提示给'self.name'初始化，分配空间，设置初始值！
        super.init()
    }
}
