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

class ViewController: UIViewController,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     setUpUI()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        //提示：textLabel是可选的
        //代码中textLabel?是自带的，如果有，就直接使用，如果没有，就什么也不做
        cell.textLabel?.text = "hello~~~~~ \(indexPath.row)"
        return cell
    }
    func setUpUI() {
        //创建表视图
        let tv = UITableView(frame: view.bounds, style: .plain)
        //添加到视图
        view.addSubview(tv)
        //注册可重用cell OC[UITableViewCell class]
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        //设置数据源
        //Swift中没有实现协议是一个错误
        tv.dataSource = self
    }
}

