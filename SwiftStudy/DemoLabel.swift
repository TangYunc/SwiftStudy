//
//  DemoLabel.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/28.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {

    //模型，给视图设置模型，由视图自己根据模型的数据，决定选择的内容
    var p: Person? {
        //***就是替代OC中的重写setter方法
        //再也不需要考虑_成员变量  =  值
        //OC中如果是copy属性，直接_成员变量 = 值.copy
        didSet {
            //此时name属性已经有值
            text = p?.name
        }
    }
    
    
    
}
