//
//  Person.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/24.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class Person: NSObject {

    //基本数据类型，在OC中没有可选项，如果定义成可选，运行时同样获取不到，使用KVC就会奔溃
//    var age: Int？
    var name: String?
    var age: Int = 0
    //private的属性，使用运行时同样获取不到属性，（可以获取到ivar），同样会让KVC崩溃
    var title: String?
    
    //使用运行时获取当前类所有属性的数组
    //获取ivar列表是所有第三方框架字典转模型的基础
    class func propertyList() -> [String] {
        var count: UInt32 = 0
        
        //1.获取‘类’的属性列表，返回属性列表的数组，可选项
        let list = class_copyPropertyList(self, &count)
        print("属性的数量:\(count)")
        //2.遍历数组
//        for i in 0..<Int(count) {
//            //1.根据下标获取属性
//            // objc_property_t?
//            let pty = list?[i]
//            //2.获取属性值的C语言字符串
//            //Int8 -> Byte -> Char => C语言字符
//            let cName = property_getName(pty!)
//            //3.转换成String字符串
//            let name = String(utf8String:cName)
//            print(name)
//
//        }
        
        for i in 0..<Int(count) {
            //1.根据下标获取属性
            //使用guard语法，依次判断每一项是否有值，只要有一项为nil，就不再执行
            guard let pty = list?[i], let cName = property_getName(pty), let name = String(utf8String:cName) else {
                //遍历下一个
                continue
                
            }
            
            print(name)
            
        }
        //3.释放C语言的对象
        free(list)
        return []
    }
    
    
}
