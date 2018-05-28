//
//  DemoLabel.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/28.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {

    //重写构造函数
    //xib不会调用，纯代码专用
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
    }
    //initWithCoder是使用Xib / storyboard开发入口
    //提示：所有的UIView及子类在开发时，一旦重写了构造函数必须要实现initWithCoder函数，以保证提供两个通道
    //方法的添加Xcode有智能提示
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpUI()
        
        //fatalError如果用Xib开发会直接奔溃
        //禁止Xib / storyboard使用本类！
//        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpUI() -> () {
        print("设置界面")
    }
}
