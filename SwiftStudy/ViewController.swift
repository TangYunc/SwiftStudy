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

        loadData { (result) in
            print("获取的新闻数据\(result)")
        }
    }
    /**
     异步执行任务，获取结果，通过block/闭包回调
     *在Swift中，闭包的应用场景与block一致
     */
    //将任务添加到队列，指定任务执行的函数
    //翻译：队列调度任务（闭包/block），以（同步/异步）的方式执行
    func loadData(completion: @escaping (_ result: [String]) -> ()) -> () {
        DispatchQueue.global().async {
            print("耗时操作 \(Thread.current)")
            //休眠
            Thread.sleep(forTimeInterval: 3)
            //获得结果
            let json = ["八卦","新闻","大事件"]
            
            //主队列回调
            DispatchQueue.main.async(execute: {
                print("主线程更新\(Thread.current)")
                
                //回调执行闭包，通过参数传递
                //传递异步获取的结果
            completion(json)
            })
        }
    }
}

