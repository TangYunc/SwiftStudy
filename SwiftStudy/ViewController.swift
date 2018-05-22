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
        
//    demo3()
        demo4(name: "老王", age: 18)
    }
    func demo4(name: String?, age: Int?) {
        
        if let name = name, let age = age {
            //非空的name和age仅在{}内有效
            print(name + String(age))
            print("---------")
        }
        //guard let & if let的技巧
        //使用同名变量接受值，在后续使用的都是非空值，不需要解包
        guard let name = name,let age = age else {
            print("姓名或者年龄其中一个为nil")
            return
        }
        print(name + String(age))
    }
    
    
    //MARK:--guard let
    //MARK: guard let和if let正相反
    func demo3() {
        let oName: String? = "老外那个"
        //        let oAge: Int? = nil // = 10
        let oAge: Int? = 10
        //guard let一定有值，没有直接返回
        guard let name = oName, let age = oAge else {
            print("name或age的值为nil")
            return
        }
        //代码执行至此，name和age一定有值
        //通常判断是否有值之后，会做实际逻辑，通常用到的代码比较多
        //guard let的语法是swift2.0推出的
        print(name + String(age))
    }
    
    //MARK:--if let / var连用语法，目的就是判断值
    //不是单纯的if
    func demo2() {
        let oName: String? = "老外那个"
//        let oAge: Int? = nil // = 10
        let oAge: Int? = 10
        if oName != nil && oAge != nil {
            print(oName! + String(oAge!))
        }else {
            print("oName 或 oAge 为空")
        }
        //if let 连用，判断对象的值是否为nil，{}内一定有值，可以直接使用，不需要解包
        //if let {} 连用
        if var name = oName, let age = oAge {
            name = "老李"
            print(name + String(age))
        }else{
            print("name 或 age 为nil")
        }
    }
    
    //MARK: ??
    func demo1(x: Int?, y: Int?) {
        
        /**
         ??是一个简单的三目运算符
         如果有值，使用值
         如果没有值，使用 ?? 后面的值替代
         */
        print((x ?? 0) + (y ?? 0))
        let name: String? = nil
        print(name ?? "" + "你好")
        
        //??的优先级‘低’
        print((name ?? "") + "牛逼好")
    }
    
    func demo(x: Int?, y: Int?) {
        //1.强行解包由风险,nil 的时候Unexpectedly found nil while unwrapping an Optional value
//        print(x! + y!)
        //2.使用if判断，但是如果使用if有时候会让代码很丑
        if x != nil && y != nil {
            print(x! + y!)
        } else {
            print("x或者y的值为nil")
        }
    }
    
    
}

