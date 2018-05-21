//
//  ViewController.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/21.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

/**
 1.OC：[UIView alloc] initWithXXX:]
 Swift:UIView(XXX:)
       UIView()
    类名（）== alloc/init 等价
 
 2.类方法
 OC: [UIColor redColor]
 Swift:UIColor.red
 2.0:UIColor.redColor()
 
 3.访问当前对象属性，可以不使用:'self'
 建议：都不用self，在编译器提示的时候再添加，会对‘语境’有更好的体会
 原因：闭包（类似于OC的block），需要使用self
 
 4.没有‘；’
    ‘；’分割语句的，在 swift中，默认不需要
 
 5.枚举类型
 OC：UIButtonTypeContactAdd
 Swift:.contactAdd
 
 6.监听方法
 OC:@selector
 Swift:#selector，如果带参数，不需要使用‘：’
 2.0直接使用“”，带参数需要使用‘：’
 
 7.调试
 OC: NSLog
 Swift:print,特点：没有时间，效率比NSLog高
 
 OC：__Fuction__
 Swift: #function
 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let a = 10 ; let b = 20
        
        let v = UIView(frame:CGRect(x: 0, y: 20, width: 100, height: 100));
        v.backgroundColor = UIColor.red;
        self.view.addSubview(v)
        //创建一个按钮
        let btn = UIButton(type: .contactAdd)
        //添加到当前视图
        v.addSubview(btn)
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        //2.0语法
//        btn.addTarget(self, action: "clickMe", for: .touchUpInside)
        
    }
    @objc func clickMe(btn: UIButton) -> () {
        print(#function)
        print("哈哈哈哈哈")
        print(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

