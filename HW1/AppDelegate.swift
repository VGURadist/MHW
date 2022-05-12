//
//  AppDelegate.swift
//  HW1
//
//  Created by proff on 4/26/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupWindow()
        return true
    }

    
    func setupWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = TableViewController()
        window?.makeKeyAndVisible()
    }


}

