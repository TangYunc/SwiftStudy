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

    
    var numTF1: UITextField?
    var numTF2: UITextField?
    var resultLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    //MARK:计算结果
    @objc func cacl() -> () {
        print(#function)
        //将文本框内容转换为数字
        //Int? 如果文本框内容不是数字之后为nil
        //先测试let num1 = Int(numTF1?.text ?? "")
        let num1 = Int(numTF1?.text ?? "")
        let num2 = Int(numTF2?.text ?? "")
        
        print("\(num1)-----\(num2)")
        guard let num11 = num1, let num22 = num2 else {
            print("计算值必须为数字")
            return
        }
        resultLabel?.text = "\(num11 + num22)"
    }
    
    
    func setUpUI() -> () {
        
        //创建两个TextField
//        let tf1 = UITextField(frame: CGRect(x: 20, y: 100, width: 100, height: 30))
//        tf1.borderStyle = .roundedRect
//        tf1.text = "0"
        let tf1 = UITextField(frame: CGRect(x: 20, y: 100, width: 100, height: 30), placeholder: "0")
        
        view.addSubview(tf1)
        
        let tf2 = UITextField(frame: CGRect(x: 140, y: 100, width: 100, height: 30))
        tf2.borderStyle = .roundedRect
        tf2.text = "0"
        view.addSubview(tf2)
        //创建三个Label
        let l1 = UILabel(frame: CGRect(x: 120, y: 100, width: 20, height: 30))
        l1.textAlignment = .center
        l1.text = "+"
        
        view.addSubview(l1)
        
        //记录属性
        numTF1 = tf1
        numTF2 = tf2
        
        let l2 = UILabel(frame: CGRect(x: 240, y: 100, width: 20, height: 30))
        l2.textAlignment = .center
        l2.text = "="
        
        view.addSubview(l2)
        
        let l3 = UILabel(frame: CGRect(x: 260, y: 100, width: 100, height: 30))
        l3.textAlignment = .center
        l3.text = "0"
        
        view.addSubview(l3)
        
        resultLabel = l3
        //创建一个按钮
//        let btn = UIButton(type: .custom)
//        btn.setTitle("计算结果", for: .normal)
//        btn.setTitleColor(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), for: .normal)
//        btn.sizeToFit()
        let btn = UIButton(title: "计算结果")
        btn.center = view.center
        
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(cacl), for: .touchUpInside)
    }
    

}

