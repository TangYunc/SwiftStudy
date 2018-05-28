//
//  ViewController.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/28.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     private lazy var p = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        p.title3 = nil
        
        //只要调用一次，懒加载后面的闭包就再也不会执行了
//        let p = Person()
        p.name = "老人"
        print(p.name)
//        p.title = "afsa"
        print(p.title2)
        
        print(p.title3)
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        p.name = "花花"
        print(p.title2)
        print(p.title3)
    }
}
