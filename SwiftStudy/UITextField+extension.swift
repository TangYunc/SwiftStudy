//
//  UITextField+extension.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/25.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

//extension类似于OC中的category
extension UITextField {
    
    convenience init(frame: CGRect, placeholder: String, fontSize: CGFloat = 14) {
        //实例化当前对象
        self.init(frame: frame)
        //访问属性
        self.borderStyle = .roundedRect
        self.placeholder = placeholder
        self.font = UIFont.systemFont(ofSize: fontSize)
    }
    
}
