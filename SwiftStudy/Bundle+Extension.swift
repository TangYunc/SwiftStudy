//
//  Bundle+Extension.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/28.
//  Copyright © 2018年 中发. All rights reserved.
//

import Foundation

extension Bundle {
    
    //返回命名空间字符串
//    func nameSpace() -> String {
//
////        return  Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
//        return  infoDictionary?["CFBundleName"] as? String ?? ""
//    }
    //计算属性类似于函数，没有参数，有返回值
    var nameSpace: String {
        return  infoDictionary?["CFBundleName"] as? String ?? ""
    }
}
