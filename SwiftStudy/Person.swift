//
//  Person.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/24.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit
/**
 1.定义属性的时候，如果是对象，通常都是可选的
 --在需要的时候创建
 --避免写构造函数，可以简化代码
 2.使用KVC方法之前，应该调用super.init保证对象实例化完成
 */
class Person: NSObject {
    //name属性是可选的，在OC中很多的属性都是在需要的时候创建的
    //例如，vc.view/tableViewcell.textLabel/detailLabel/imageView
    //因为是在手机开发，内存很宝贵，有的属性是并不是一定要分配空间的
    //延迟加载，需要的时候再创建
    var name: String?
    //重置构造函数，使字典为本类设置初始值
    init(dict: [String: Any]) {
        //'self' used before super.init call
        //使用‘self’之前要调用父类初始化方法
        super.init()
        //KVC 的方法是OC的方法，**在运行时给对象发送消息**
        //要求对象已经实例化完成
        setValuesForKeys(dict)
    }
}
