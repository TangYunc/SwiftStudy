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
//        demo()
        demo4()
    }
    //MARK:--字符串的子串
    func demo4() -> () {
        //建议：一般使用NSString作为中转，因为Swift取子串的方法一直在变
        let str = "让我们一起去飞"
        //1.NSString
        let ocStr = str as NSString
        let s = ocStr.substring(with: NSMakeRange(2, 3))
        print(s)
        
        print(str.startIndex)
        print(str.endIndex)
        //String的3.0的方法
        //startIndex position = 0
        //endIndex position = str.length
        let s1 = str.substring(from: "我们".startIndex)
        let s2 = str.substring(from: "abc".startIndex)
        print(s1)
        print(s2)
        //取自字符串的范围
        guard let range = str.range(of: "一起") else {
            print("没有找到字符串")
            return
        }
        //一定找到的范围
        print("---------")
        print(range)
        print(str.substring(with: range))
    }
    
    
    
    //MARK:--格式化
    func demo3() -> () {
        let h = 8
        let m = 9
        let s = 20
        let dataStr = "\(h):\(m):\(s)"
        print(dataStr)
        //使用格式字符串格式化
        let dataStr1 = String (format: "%02d:%02d:%02d", h,m,s)
        print(dataStr1)
    }
    
    
    //MARK:字符串拼接
    func demo2() {
        let name = "老王"
        let age = 18
        let title: String? = "Boss"
        let point = CGPoint(x: 100, y: 200)
        let str = "\(name) \(age) \(point) \(title ?? "")"
        print(str)
    }
    //MARK:字符串长度
    func demo1() {
        let str = "abadcd"
        //返回指定编码的对应字节的数量
        //utf8的字节（0～4）个，汉子的字节数是3个
        print(str.lengthOfBytes(using: .utf8))
        //字符串长度，返回字符串个数(推荐使用)
        print(str.count)
        print(str.characters.count)
        //使用NSString中转
        /**
         str as NSString
         OC 的写法（CustomTabelCell *）[tableView dequeue...]
         Swift中可以使用  值 as 类型。来进行类型转换
         */
        let ocString = str as NSString
        print(ocString.length)
        
    }
    //MARK:字符串遍历
    func demo() {
        //NSString不支持以下遍历
        let str = "我要飞得更高"
        for c in str.characters {
            print(c)
        }
    }
}

