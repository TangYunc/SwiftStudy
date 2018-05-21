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
    //MARK:三目
    func demo1() {
        let x = 10
        x > 5 ? print("大了") : print("小了")
        //（）表示空执行
        x > 5 ? print("大了") : ()
    }
    
    func demo() {
        let x = 10
        /**
         条件不需要（）
         语句必须要{}
         */
        if x > 5 {
            print("大了")
        } else {
            print("小了")
        }
        
    }
}

