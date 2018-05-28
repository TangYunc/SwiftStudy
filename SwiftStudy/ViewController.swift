//
//  ViewController.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/28.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var label: DemoLabel?
    //懒加载,lazy
    /**
     ---能够延迟创建
     ---懒加载的好处，->解除解包的烦恼
     */
    lazy var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpUI()
    }

    func setUpUI() -> () {
        //1.创建控件
        //‘!’--解包，为了参与计算，addSubview用Subviews数组记录控件，数组中不允许插入nil
        //'?'--可选解包，调用方法，如果为nil，不调用方法。不参与计算
        label = DemoLabel()
        view.addSubview(label)
        
        label.text = "hello"
        label.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16)
        label.center = view.center
    }

}
