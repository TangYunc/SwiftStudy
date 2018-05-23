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
     demo3()
    }
    //MARK:
    //4.合并
    func demo3() -> () {
        var dict = ["name": "大西瓜", "age": "12", "title": "大哥"]
        let dict1 = ["name":"张","age":"12"]
        //思路：遍历dict1，依次设值
        //如果KEY不存在，会新增
        //如果KEY存在，会修改
        for e in dict1 {
            dict[e.key] = dict1[e.key]
        }
        print(dict)
    }
    //3.遍历
    func demo2() -> () {
        let dict = ["name": "大西瓜", "age": "12", "title": "大哥"]
        //元组（key:String,value:NSObject）
        for e in dict {
            print(e)
            print("\(e.key)  \(e.value)")
        }
        for (key,valu) in dict {
            print("\(key)   \(valu)")
        }
        
    }
    //2.增，删，改
    func demo1() -> () {
        //可变（var）/不可变（let）
        var dict = ["name":"张","age":"12"]
        //新增----如果KEY不存在，就是新增
        dict["title"] = "大哥"
        print(dict)
        //修改----如果KEY存在，就是修改
        dict["name"] = "大西瓜"
        print(dict)
        //删除----直接给丁KEY
        //科普：字典就是通过KEY来定位值 的，KEY必须是可以‘hash哈希’，MD5是哈希的一种
        //‘哈希’就是将字符串变成唯一的整数，便于查找，提高字典的遍历速度
        dict.removeValue(forKey: "age")
        print(dict)
    }
    //1.定义
    func demo() -> () {
        //OC中定义字典用{}
        //Swift中定义字典用[]
         let dict = ["name":"张","age":"12"]
        let dict1 = ["name":"陆离","age":18] as [String : Any]
        print(dict)
        print(dict1)
        //定义字典数组
        let arr = [["name":"爱国","age":20],["name":"怪我","age":40],["name":"个哦去","age":1]]
        print(arr)
        
    }
}

