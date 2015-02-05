//
//  AppDelegate.swift
//  WatchKit_SimpleTable
//
//  Created by Kerde Severin on 2/4/15.
//  Copyright (c) 2015 Kerde Severin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
    }

    func applicationDidEnterBackground(application: UIApplication) {
    }

    func applicationWillEnterForeground(application: UIApplication) {
    }

    func applicationDidBecomeActive(application: UIApplication) {
    }

    func applicationWillTerminate(application: UIApplication) {
    }
    
    func application(application: UIApplication!, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]!, reply: (([NSObject : AnyObject]!) -> Void)!) {
        
        let root = (UIApplication.sharedApplication().delegate as AppDelegate).window?.rootViewController
        let tableController = root as MainTableViewController
        
        tableController.listOfItems.append(userInfo["selectedItem"] as String)

        UIView.transitionWithView(tableController.tableView, duration: 0.3, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            
            tableController.tableView.reloadData()

            }, completion: { (fininshed: Bool) -> () in
        })
    }

}

