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
        //Swift1.0调用方式sum（10，50）所有的形参都会省略
        //Swift2.0调用方式sum（10，y: 50）第一个形参的名称省略
        //Swift3.0调用方式sum(x: 10, y: 50)
//        print(sum(x: 10, y: 50))
        //外部参数测试
//        print(sum1(num1: 40, num2: 60))
//        print(sum2(20, 5))
        //默认值测试
        print(sum3())
        print(sum3(x: 10, y: 20))
        print(sum3(x: 10))
        print(sum3(y: 80))
        //无返回值测试
        demo1()
        demo2()
        demo3()
    }
    
    //MARK:无返回值
    /**
        主要用在闭包
        - 直接省略
        - ()
        - Void
     */
    func demo1() {
        print("哈哈")
    }
    func demo2() -> () {
        print("呵呵")
    }
    func demo3() -> Void {
        print("嘻嘻")
    }
    //MARK:默认值
    //通过给参数设置默认值，在调用的时候，可以任意组合参数，如果不指定的，就用默认值
    //****OC中需要调用很多方法，以及方法实现，最终调用包含所有参数的那个函数
    func sum3(x: Int = 1, y: Int = 2) -> Int {
        return x + y
    }
    //MARK:外部参数
    //-外部参数就是在形参前加一个名字
    //-外部参数不会影响函数内部的细节
    //-外部参数会让外部调用看起来更加直观
    //-外部形参如果使用‘_’，在外部调用函数的时候，会忽略形参的名字
    func sum2(_ x: Int, _ y: Int) -> Int {
        
        //在Swift中，‘_’就是可以忽略任何不感兴趣的内容
        ///Immutable value 'i' was never used; consider replacing with '_' or removing it
        ///i从来没有被使用，使用‘_’来替换或移除它
        //for i in 0..<5
        for _ in 0..<5 {
            print("hello")
        }
        
        return x + y
    }
    
    func sum1(num1 x: Int, num2 y: Int) -> Int {
        return x + y
    }
    
    //MARK:函数定义
    //函数的定义，格式： 函数名（形参列表）->返回值类型
    func sum(x: Int, y: Int) -> Int {
        return x + y
    }
    
}

