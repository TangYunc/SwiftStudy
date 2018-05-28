//
//  AppDelegate.swift
//  SwiftStudy
//
//  Created by 中发 on 2018/5/21.
//  Copyright © 2018年 中发. All rights reserved.
//

import UIKit

/**
 swift2010,历经一年开发，2014年春发布第一版，15年春发布两个版本，1.2和2.0beta版，15年底发布2.0，16年发布3.0版本。
 其中更安全表现在取消预编译指令（宏），没有指针，以Struct为主，只有四大类。
 */
//1.UIApplicationMain程序等入口
//2.只有.swift文件，在 swift中默认全局共享
//3.所有代码都包装在{},默认方法都有缩进

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    //注意：window是可选的
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //****代码中的'?'都是可选解包，发送消息，不参与计算
        //所有的'?'都是Xcode自动添加的
        
        //1.实例化window
        window = UIWindow()
        window?.backgroundColor = UIColor.white
        //2.设置根视图
        let v = ViewController()
        window?.rootViewController = v
        
        //3.设置window可见
        window?.makeKeyAndVisible()
        
        
        return true
    }

    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

