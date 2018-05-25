//
//  UIButton+extension.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/25.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

extension UIButton {
    convenience init(title: String, titleColor:UIColor = UIColor.darkGray) {
        self.init()
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.sizeToFit()
    }
}
