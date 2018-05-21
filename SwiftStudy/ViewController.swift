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
        
    demo1()
    }
    
    func demo1() {
        //1.定义y没有初始化
        let y: Int?
        //2.给常量初始数值，只做一次
        y = 10
        //再次修改常量会报错
//        y = 3
        print(y)
        
        //var的可选值默认为nil
        //let可选值没有默认值
        var x: Int?
        x = 10
        x = 100
        print(x)
    }
    
//最常见的错误：
     //Unexpectedly found nil while unwrapping
    //再解包时发现了nil值
/**
     定义 可选项时使用‘？’
     解包使用‘！’，运算时候使用
     */

    func demo() {
    //1.原始的可选项定义
        //none没有值   some(Wrapped)
        let x: Optional = 10
        
        //2.简单的定义
        //‘？’用来定义y是一个可选的Int类型，可能没有值，也可能是一个整数
//        let y: Int?
        //Constant 'y' used before being initialized
        //常量y使用前必须初始化
        let y: Int? = 40//= nil
        //输出结果Optional(10)，提示这是一个可选值
        print(x)
        print(y)
        
        //不同类型之间的值不能直接运算！如果没有值是 nil 不是任何数据类型，不能参与计算
        //print(x + y)
        //'!'强行解包，从可选值中强行获取对应的非空值，如果真的是nil就会奔溃，因此程序员必须对每一个‘！’负责，程序中要少用‘！’
        print(x! + y!)
    }
}

