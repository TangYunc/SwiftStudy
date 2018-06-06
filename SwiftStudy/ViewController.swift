//
//  ViewController.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/6/4.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 50, y: 100, width: 100, height: 30)
        btn.setTitle("Hello World!", for: .init(rawValue: 0))
        btn.setTitleColor(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), for: .init(rawValue: 0))
        btn.sizeToFit()
        view.addSubview(btn)
        
        let btn1 = UIButton(type: .custom)
        btn1.frame = CGRect(x: 50, y: 150, width: 100, height: 30)
        btn1.setTitle("Hello World!", for: .normal)
        btn1.setTitleColor(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), for: .normal)
        btn1.sizeToFit()
        view.addSubview(btn1)
        
        let btn2 = UIButton(type: .custom)
        btn2.frame = CGRect(x: 50, y: 200, width: 100, height: 30)
        btn2.setTitle("Hello World!", for: [])
        btn2.setTitleColor(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), for: [])
        btn2.sizeToFit()
        view.addSubview(btn2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

