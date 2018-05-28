//
//  Person.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/28.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class Person: NSObject {

    private var _name: String?
    //get&set方法演示，仅供参考，日常开发不常用
    
    
    var name: String? {
        get {
            //返回_成员变量
            return _name
        }
        set {
            //使用_成员变量记录值
            _name = newValue
        }
    }
    
}
