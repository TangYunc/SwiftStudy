//
//  ViewController.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/28.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        let p = Person()
        p.name = "小虎"
        
        let label = DemoLabel(frame: CGRect(x: 10, y: 50, width: 100, height: 40))
        view.addSubview(label)
        //将模型设置给label
        label.p = p
        
    }


}
