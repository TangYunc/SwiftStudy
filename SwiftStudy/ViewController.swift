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
        //URL的构造函数可以返回nil
        //构造函数就是实例化对象的
        let url = URL(string: "http:www.baidu.com")
        //发起网络请求
        //和OC的区别，闭包的所有参数，都要自己写，而OC是直接带入
        //如果不关心的值可以直接忽略
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
//            if (error != nil){
//                print("网络请求失败！")
//                return
//            }
            guard let data = data else{
                print("网络请求失败:\(error)")
                return
            }
            //将data转换为String
            let html = String(data:data, encoding:.utf8)
            print(html)
            
        }.resume()
        
    }
    

}

