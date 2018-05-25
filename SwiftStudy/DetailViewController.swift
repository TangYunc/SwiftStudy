//
//  DetailViewController.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/25.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    @IBOutlet weak var nameTF: UITextField!
    
    @IBOutlet weak var phoneTF: UITextField!
    
    @IBOutlet weak var titleTF: UITextField!
    
    var person: Person?
    
    //完成回调的属性
    //闭包的返回值是可选的
//    var completionCallBack: () -> ()?
    //闭包是可选的
    var completionCallBack: (() -> ())?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //判断person是否有值，如果有设置UI
        if person != nil {
            nameTF.text = person?.name
            phoneTF.text = person?.phone
            titleTF.text = person?.title
        }
        
    }

    
    @IBAction func saveAction(_ sender: Any) {
        
        //1.判断person是否为nil，如果为nil，则新建person
        if person == nil {
            person = Person()
        }
        //2.用UI更新person的内容
        person?.name = nameTF.text
        person?.phone = phoneTF.text
        person?.title = titleTF.text
        //3.闭包回调
        //OC中执行block前都要进行判断是否有值，否则容易奔溃
        //'!'强行解包（在这里是Xcode自动帮助修订，一定不要用'!'）
        //'?'可选解包 -> 如果闭包为nil，就什么也不用做
        completionCallBack?()
        //4.返回上一级界面
        //在Swift3.0上，navigationController?.popViewController(animated: true)有一个返回值，会有一个警告提示方法的返回值没有使用。此时用‘_’忽略一切不关心的内容
        navigationController?.popViewController(animated: true)
    }
    
}
