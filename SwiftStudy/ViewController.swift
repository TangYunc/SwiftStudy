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

        //实例化Person
        //()----->OC 的alloc/init
        //Swift中对应一个函数init()构造函数
        //作用：分配空间，初始化成员变量
        let p = Person(name: "老王")
        print(p.name)
        
    }
    

}

