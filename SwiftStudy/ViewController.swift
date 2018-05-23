//
//  ViewController.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/21.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

/**
 swift官方网站:https://swift.org
 官方博客：https://developer.apple.com/swift/blog
 苹果官方swift2.0电子书：https://itunes.apple.com/us/book
 2.0中文版：http://wiki.jikexueyuan.com/project/swift/
 4.0:https://www.cnswift.org/
 100个swift学习tip，作者王巍，http://onecat.com
 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        /**
        /// 枚举类型，按钮的nomal在3.0的时候没有，应该是一个bug
         Swift
         
         -- 类
         -- 结构体
         -- 枚举（一般不会用到太高级的用法）
         以上三个都有构造函数，都可以有方法，整体看起来，都像原有的类
         Xib小，布局快
        */
        let btn = UIButton(type: .custom)
        btn.setTitle("按钮", for: .init(rawValue: 0))
        btn.setTitle("不是按钮", for: .highlighted)
        btn.setTitleColor(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1), for: .init(rawValue: 0))
        btn.setTitleColor(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), for: .highlighted)
        btn.frame = CGRect(x: 10, y: 50, width: 100, height: 40)
        view.addSubview(btn)
    }
    
    
}

