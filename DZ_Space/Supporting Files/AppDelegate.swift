//
//  AppDelegate.swift
//  DZ_Space
//
//  Created by user on 09/04/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        configureNavigationBar()
        
        return true
    }
    
    func configureNavigationBar() {
        UINavigationBar.appearance().barTintColor = UIColor(red: 0.141, green: 0.141, blue: 0.141, alpha: 1.00)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
    }

}

