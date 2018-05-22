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
        demo4()
    }
    //MARK:--数组的合并
    func demo4() -> () {
        //[String]
        var arr = ["adsaf","dagq","bqerqrh"]
//        var arr: [NSObject] = ["adsaf","dagq","bqerqrh"]
        let arr1 = ["师大会分开"]
//        let arr1 = ["师大会分开",100]
        //将arr1的内容合并到arr中去
        //注意：要合并两个数组，其内容的类型必须一致
        arr += arr1
        print(arr)
        
    }
    //MARK:--数组的容量
    func demo3() -> () {
        
        //OC 中，如果初始化容量，可以避免重复分配空间，效率会高一点
        
        //定一个数组，存放的是Int类型的数组，但是没有初始化
//        var arr: [Int]
//        //给数组进行初始化
//        arr = [Int]()
//        print(arr)
        //以上两句代码合成一句
        var arr = [Int]()
        print("初始化容量\(arr.capacity)")
        for i in 0..<8 {
            arr.append(i)
            print("\(arr) 容量\(arr.capacity)")
        }
    }
    
    
    //MARK:--数组的增。删。改
    func demo2() -> () {
        //OC中数组分为可变NSMutableArray（var） 和不可变NSArray（let）
        var arr = ["adsaf","dagq","bqerqrh"]
        arr.append("oeowow")
        print(arr)
        
        //修改,通过下标定位
        arr[0] = "qqqq"
        print(arr)
        
        //删除
        //数组越界Index out of range
//        arr[5] = "XXXX"
//        print(arr)
        arr.remove(at: 3)
        print(arr)
        //删除全部，并且保留空间
        arr.reserveCapacity(4)
        print("\(arr) \(arr.capacity)")
    }
    
    
    //MARK:--数组的遍历
    func demo1() -> () {
        let arr = ["adsaf","dagq","bqerqrh"]
        //1.按照下标遍历
        print("----按照下标遍历")
        for i in 0..<arr.count {
            print(arr[i])
        }
        //2.for in 遍历元素
        print("----遍历元素")
        for s in arr {
            print(s)
        }
        //3.enum block遍历，同时遍历下标和内容
        print("----遍历下标和内容")
        for e in arr.enumerated() {
            print("\(e.offset) \(e.element)")
        }
        //4.遍历下标和内容2
        print("----遍历下标和内容2")
        /**
         n是索引下标
         s是[String]数组 n 对应的String元素
         */
        for (n,s) in arr.enumerated() {
            print("\(n)  \(s)")
        }
        //5.反序遍历
        print("----反序遍历")
        for s in arr.reversed() {
            print(s)
        }
        
        //6.反序遍历索引&内容
        print("----错误的反序遍历")
        //错误的反序遍历，内容和索引不一致
        for (n,s) in arr.reversed().enumerated() {
            print("\(n)  \(s)")
        }
        print("----正确的反序遍历")
        //先枚举，再反序
        for (n,s) in arr.enumerated().reversed() {
            print("\(n)  \(s)")
        }
    }
    
    
    //MARK:--数组的定义
    func demo() -> () {
        
        //OC使用[]定义数组，Swift一样，但是没有‘@’
        //自动推导结果[String],表示数组中存放的都是 String
        //跟OC中的数组指定泛型类似
        let arr = ["adsaf","dagq","bqerqrh"]
        print(arr)
        //Swift中基本数据不需要包装
        let arr1 = [1,2,3,4,5]
        print(arr1)
        //CG结构体
        let point = CGPoint(x: 3, y: 5)
        let arr2 = [point]
        print(arr2)
        //混合结构体，开发中基本不用，因为数组是靠下标索引
        //如果数组中的类型不一致，自动推导的结果[NSObject]
        //在Swift中还有一种类型，[AnyObject]->任意对象
        //在Swift中一个类可以没有父类
        //****在混合的数组中，CG结构需要包装
        let arr3 = ["adasf",4,NSValue(cgPoint: point)] as [Any]
        print(arr3)
    }
}

