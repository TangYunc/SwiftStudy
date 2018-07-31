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
        let str = "{\"name\": \"zhang\"}"
        guard let data = str.data(using: .utf8) else {
            return
        }
        //1.try? -如果转换失败，大多数会返回nil
        guard let json = try? JSONSerialization.jsonObject(with: data, options: []) else {
            return
        }
        print(json)
        
        //2.try! -如果转换失败，直接崩溃，尽量避免使用
//        let json1 = try! JSONSerialization.jsonObject(with: data, options: [])
//        print(json1)
        //3.do try 最安全，但是使用步骤繁琐，另外在其内部智能提示不太好
        do {
            let json2 = try JSONSerialization.jsonObject(with: data, options: [])
            print(json2)
        } catch {
            //输出代码的详细错误信息
            print(error)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

