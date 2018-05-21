//
//  ViewController.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/21.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

/**
 从Xcode8.0开始，所有插件都不能使用
 */

class ViewController: UIViewController {

    //MARK:--视图生命周期
    //MARK:视图加载完成
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //MARK:Xcode提供了官方的图片辅助功能Image Literal， 不需要安装第三方插件。 PS：Apple很任性， 很多三方插件都禁用了。
        let v = UIView(frame:CGRect(x: 0, y: 20, width: 100, height: 100));
        v.backgroundColor = UIColor.red;//Xcode8.0特有TODO:应该重置新的颜色
         //ColorLiteral也是Xcode提供的小功能，用法跟ImageLiteral相同。 还可以点击Other按钮，有更多的便捷选色界面。
        v.backgroundColor = #colorLiteral(red: 0, green: 0.9607843137, blue: 0.9607843137, alpha: 1)
        self.view.addSubview(v)
        
        //MARK:Image Literal的功能；
        
        //1.输入Image会有智能提示， 选中Image Literal并回车。
        //2.选中ImageLiteral后会显示一个小图标， 双击这个小图标会罗列出Resources目录里的所有图片， 选中你想要的图片就可以了。
        let im = UIImageView (image: #imageLiteral(resourceName: "头像"))
        im.frame = CGRect (x: 100, y: 200, width: 300, height: 400)
        
        let iv = UIImageView(image: #imageLiteral(resourceName: "背景"))//Xcode8.0特有FIXME:应该更改新的背景
        
        iv.center = view.center
        view.addSubview(iv)
        view.addSubview(im)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

