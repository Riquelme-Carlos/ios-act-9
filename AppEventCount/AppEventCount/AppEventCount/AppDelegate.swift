//
//  AppDelegate.swift
//  AppEventCount
//
//  Carlos Riquelme
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var viewController: ViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
       
        viewController = window?.rootViewController as? ViewController
        viewController?.launchCount += 1

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
        
        viewController?.resignActiveCount += 1
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
        
        viewController?.enterBackgroundCount += 1
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
        
        viewController?.enterForegroundCount += 1
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
        
        viewController?.becomeActiveCount += 1
        viewController?.updateView()
    }

    func applicationWillTerminate(_ application: UIApplication) {
       
        
        viewController?.terminateCount += 1
    }


}

