//
//  ListTableViewController.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/25.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

    var personList = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData { (list) in
            print(list)
            //拼接‘数组’，闭包中定义好的代码在需要的时候执行，需要‘self.’指定语境
            self.personList += list
            //刷新表视图
            self.tableView.reloadData()
        }
    }
    //模拟异步，利用闭包回调
    private func loadData(completion: @escaping (_ list: [Person]) -> ()) -> () {
        DispatchQueue.global().async {
            
            Thread.sleep(forTimeInterval: 1)
            var arrM = [Person]()
            for i in 0..<20 {
                let p = Person()
                p.name = "zhangsan---\(i)"
                p.phone = "1860" + String(format: "%06d", arc4random_uniform(1000000))
                p.title = "boss"
                arrM.append(p)
            }
            //主线程回调
            DispatchQueue.main.async(execute: {
                //回调，执行闭包
                completion(arrM)
            })
            
        }
    }
    //MARK:控制器跳转方法
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //类型转换as
        //Swift中除了String外，绝大多数使用as需要‘?/!’
        //as? / as! 直接根据前面的值来决定
        //注意：if let / guard let 判空语句，一律使用 as?
        let vc = segue.destination as! DetailViewController
        
        //设置选中的person。indextPath
        if let indextPath = sender as? IndexPath {
            //indextPath一定有值
            vc.person = personList[indextPath.row]
        }
        
    }
    
    //MARK:代理方法
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //执行Segue
        performSegue(withIdentifier: "list2Detial", sender: indexPath)
    }
    
    //MARK:数据源方法
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = personList[indexPath.row].name
        cell.detailTextLabel?.text = personList[indexPath.row].phone
        return cell
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
