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

    //属性就是一个var
    var completionCallBack: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //block 中如果出现self. 要特别小心
        //只是闭包对self进行了copy，闭包执行完成后，会自动销毁，同时释放对self的引用
        //要发生循环引用，同时需要self对闭包进行引用
        loadData {
            
            print(self.view)
        }
    }
    func loadData(completion: @escaping () -> ()) -> () {
        //使用属性记录闭包    ->self对闭包引用了
        completionCallBack = completion
        //异步
        DispatchQueue.global().async {
            print("耗时操作")
            DispatchQueue.main.async(execute: {
                //回调，执行闭包
                completion()
            })
        }
    }
    //类似于OC中的dealloc
    deinit {
        print("释放了")
    }
}

