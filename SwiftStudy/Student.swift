//
//  Student.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/24.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class Student: Person {

    //override重写
    var no: String
    override init() {
        print("Student init")
        no = "001"
    }
    
}
