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
        
        //解除循环引用，需要打断链条
        //方法1：OC的方式
        
        //细节1:var。     weak只能修饰var，不能修饰let
        //'weak' must be a mutable variable, because it may change at runtime
        //weak 对象可能在运行时被修改 ，->指向的对象一旦被释放，会被自动置为nil
        //ViewController?
//        weak let weakSelf = self
//        weak var weakSelf = self
//        loadData {
            //细节2
            //解包有两种方式的解包
            //? 可选解包 - 如果self已经被释放了，不会向对象发出getter消息，更加安全
            //! 强行解包 - 如果self已经被释放了，强行解包会导致崩溃
        /**
             weakSelf?.view 只是单纯的发消息，没有参与运算
            强行解包，因为需要计算，可选项不能直接参与到计算
        */
            //            print(weakSelf!.view)
//            print(weakSelf?.view)
//
//        }
        
        //方法二Swift推荐的方法
        //OC中的 __weak方式
        //[weak self]表示{}中所有self都是弱引用，注意解包
        loadData { [weak self] in
            print(self?.view)
        }
        //方法三--Swift的另外一种用法，知道就好
        //OC中的 __unsafe_unretained方式
        //[unowned self]表示{}中所有self都是assign修饰的，不会强引用，但是当对象被释放的时候，指针地址不会变化
        //如果对象被释放，继续调用，会出现野指针问题
//        loadData { [unowned self] in
//            print(self.view)
//        }
        
    }
    func loadData(completion: @escaping () -> ()) -> () {
        //使用属性记录闭包    ->self对闭包引用了
        completionCallBack = completion
        //异步
        DispatchQueue.global().async {
            print("耗时操作")
            Thread.sleep(forTimeInterval: 2)
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

