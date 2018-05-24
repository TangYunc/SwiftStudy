//
//  Person.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/24.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit
/**
 构造函数的目的：给自己的 属性分配空间并且设置初始值
 调用父类的‘构造函数’之前，首先要给本类的属性设置初始值
 调用父类的‘构造函数’，给父类的属性分配空间设置初始值
 NSObject没有属性，只有一个成员变量‘isa‘
 如果重载了构造函数，并且没有实现父类的init方法，系统不再提供init()构造函数（默认是会有的！）
 ---因为默认的构造函数，不能给本类的属性分配空间
 */

//Class 'Person' has no initializers
//'Person'类没有‘初始化器’s，构造函数，可以有多个，默认的是init()
class Person: NSObject {

    var name: String
    //重写，父类有这个方法
//    override init() {
//        print("Person init")
//        //这里初始化值会产生一个问题，name的确有初始化值，但是但是所有的初始化值都为TYC
//        name = "TYC"
//        //Property 'self.name' not initialized at super.init call
//        //提示给'self.name'初始化，分配空间，设置初始值！
//        super.init()
//    }
    //重载，函数名相同，但是参数和个数不同
    //-重载可以给自己的属性从外面设置初始值
    //OC没有重载
    init(name: String) {
        //使用参数的name设置给属性
        self.name = name
        //调用父类的构造函数
        super.init()
    }
}
