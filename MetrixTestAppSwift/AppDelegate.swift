//
//  AppDelegate.swift
//  MetrixTestAppSwift
//
//  Created by Matin on 9/16/20.
//  Copyright © 2020 Metrix. All rights reserved.
//

import UIKit
import Metrix

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        MetrixClient.initialize(metrixAppId: "lcqmfsnvhzznvhe")

        // Optional
        MetrixClient.addUserAttributes(userAttrs: ["phone": "11111111111"])

        // Optional
        MetrixClient.setDefaultTracker(trackerToken: "uevt4h")

        // Optional
        MetrixClient.setOnAttributionChangedListener { (data: AttributionData) in
            print("[Metrix Sample App]: Attribution status: \(data.attributionStatus.rawValue)")
        }

        // Optional
        MetrixClient.setUserIdListener { (userId: String) in
            print("[Metrix Sample App]: UserId: \(userId)")
        }

        // Optional
        MetrixClient.setStore(storeName: "App Store")

        // Optional
        MetrixClient.setAppSecret(secretId: 1, info1: 429751687, info2: 1057026454, info3: 796046595, info4: 610423971)
        
        // Optional
        MetrixClient.setSessionIdListener { (sessionId: String) in
            print("[Metrix Sample App]: SessionId: \(sessionId)")
        }
        
        // Optional
        MetrixClient.setSessionNumberListener { (sessionNum: Int) in
            print("[Metrix Sample App]: Session Number: \(sessionNum)")
        }

        return true
    }

    // MARK: UISceneSession Lifecycle

    
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

