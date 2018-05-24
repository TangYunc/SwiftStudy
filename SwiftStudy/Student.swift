//
//  Student.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/24.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class Student: Person {

    let no: String
    init(name: String, no: String) {
        self.no = no
        //调用父类方法给name初始化
        super.init(name: name)
    }
    
}
