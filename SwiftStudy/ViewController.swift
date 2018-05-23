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

        loadData()
    }
    //将任务添加到队列，指定任务执行的函数
    //翻译：队列调度任务（闭包/block），以（同步/异步）的方式执行
    func loadData() -> () {
        DispatchQueue.global().async {
            print("耗时操作 \(Thread.current)")
            //主队列回调
            DispatchQueue.main.async(execute: {
                print("主线程更新\(Thread.current)")
            })
        }
    }
}

