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
        let jsonStr = "{\"zhangsan\": \"lisi\"}"
        let data = jsonStr.data(using: .utf8)
        print(data as Any)
        //反序列化，throw抛出异常
        //方案一，推荐try?，解析成功，有值，否则为nil
//        let json = try? JSONSerialization.jsonObject(with: data!, options: [])
//        print(json)
        //方案二，强烈不推荐try!，如果解析成功就有值，如果不成功就崩溃，有风险
//        let json1 = try! JSONSerialization.jsonObject(with: data!, options: [])
//        print(json1)
        //方案三，处理异常，能够接受错误，并输出错误
        //但是结构复杂，而且{}里面的智能提示不友好
        //提示：为什么OC中很少有人用try   catch，因为ARC中，编译器自动添加retain/release/autorelease，如果用try catch一旦出现不平衡，就会出现内存泄漏
        do {
            let json2 =  try JSONSerialization.jsonObject(with: data!, options: [])
            print(json2)
        } catch {
            print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

