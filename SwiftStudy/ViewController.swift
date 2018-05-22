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
        
//        demo2()
        demo3()
    }
    //反序遍历
    func demo3() {
        //reversed反转
        for i in (0...5).reversed() {
            print(i)
        }
    }
    
    func demo2() {
        //变量在[0,5)之间
        for i in 0..<5 {
            print(i)
        }
        print("-----------")
        //变量在[0,5]之间
        for i in 0...5 {
            print(i)
        }
        print("-----------")
        //CountableRange<Int>
        let q = 0..<5
        print(q)
        print("-----------")
        //CountableClosedRange<Int>
        let p = 0...5
        print(p)
        
        
    }
    //MARK:传统的for循环已经被取消
    func demo() {
        //传统的for循环在swift3.0已经被取消
        //i++,++i在swift3.0 被取消换为，i += 1
        /*
        for i = 0,i<5,i++{
            
        }
 */
    }
}

