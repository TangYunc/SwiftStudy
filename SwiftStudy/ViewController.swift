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
        
        demo2()
        
        //关于let和var 的选择
        //不可变的会更安全，在开发的时候先使用let，在需要变化的时候，再改为var
        //Variable 'x' was never mutated; consider changing to 'let' constant
        //变量x没有执行，建议改为let
        var x = 10
        let y = 5
        print(x + y)
        
        
        
        //修改视图属性
        let v = UIView()
        //这里仅修改的是v的属性，并未修改v的指针地址
        v.backgroundColor = UIColor.red;
        
    }

    func demo2() {
        //如果需要指定变量/常量的类型。也可以直接使用let x: 类型 = 值
        //提示:在 swift开发中，极少使用直接指定类型，通常都是自动推导
        let x: Double = 100
        let y = 10.5
//        let z = "abc"
        
        print(x + y)
    }
    
    ///1.热键:option + click
    //2.定义变量： var，定义之后可以修改
    //定义常量： let，定义之后不能修改
    //3.自动推导,变量/常量的类型会根据右侧的代码执行结果，推导对应的类型
    //4.在swift中对类型要求异常严格
    //任何不同的类型数据，不允许直接运算
    //不会做默认隐式转换，所有的类型确定，由程序员负责
    //swift中，不存在基本数据类型。都是结构体
    
    func demo1() {
        let x = 10
        let y = 10.5
        //1.将y转换成整数
        //OC 中的写法：(Int)y,类型强转
        //swift中Int()‘结构体’的构造函数
        print(x + Int(y))
        //2.将x转换成Double
        print(Double(x) + y)
        
    }
    
    func demo() {
        
        var x = 10
        x = 20
        
        let y = 10.5
        
        let v = UIView()
        
        print(x)
        print(y)
    }


}

