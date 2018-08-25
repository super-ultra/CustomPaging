//
//  AppDelegate.swift
//  CustomPaging
//
//  Created by Ilya Lobanov on 04/08/2018.
//  Copyright © 2018 Ilya Lobanov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        let tableController = AppDelegate.makeNavigationContoller(rootViewController: TableViewController(),
            title: "Table", image: UIImage(named: "table_tab_bar_icon"))
        
        let collectionController = AppDelegate.makeNavigationContoller(rootViewController: CollectionViewController(),
            title: "Collection", image: UIImage(named: "collection_tab_bar_icon"))
        
        let tabBarController = AppDelegate.makeTabBarController()
        tabBarController.viewControllers = [tableController, collectionController]
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController
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
    
    // MARK: - Private
    
    private static func makeNavigationContoller(rootViewController: UIViewController, title: String, image: UIImage?)
        -> UINavigationController
    {
        let controller = UINavigationController(rootViewController: rootViewController)
        controller.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: nil)
        controller.navigationBar.barTintColor = .white
        return controller
    }
    
    private static func makeTabBarController() -> UITabBarController {
        let controller = UITabBarController()
        controller.tabBar.tintColor = .applicationTintColor
        controller.tabBar.barTintColor = .white
        return controller
    }

}

