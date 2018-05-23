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
            闭包
            1.提前准备好代码
            2.在需要的时候执行
            3.可以当作参数传递
         */
        //1.最简单的闭包
        //() -> ()没有参数没有返回值的函数
        //如果没有参数，咩有返回值，连in可以一起省略
        let b1 = {
            print("HELLO")
        }
        //执行闭包
        b1()
        
        //2.带参数的闭包
        //闭包中，参数，返回值，都写在{}中
        //需要使用关键字‘in’分隔定义和实现
        //{形参列表->返回值类型 in // 实现代码}
        let b2 = { (x: Int) -> () in
            print(x)
        }
        b2(3)
        
        //3.带参数/返回值的闭包
        let b3 = { (x: Int) -> Int in
            return x + 111
        }
        print(b3(250))
    }
    //使用常量记录函数的演练
    func demo() {
        print(sum(x: 10, y: 20))
        
        //定义一个常量记录函数
        //1.(Int, Int) -> Int
        let f = sum
        //2.在需要的时候执行
        print(f(20, 5))
    }
    
    func sum(x: Int, y: Int) -> Int {
        return x + y
    }
}

