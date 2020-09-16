//
//  AppDelegate.swift
//  MetrixTestAppSwift
//
//  Created by Matin on 9/16/20.
//  Copyright © 2020 Metrix. All rights reserved.
//

import UIKit
import MetrixSdk

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, MetrixDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let yourAppId: String = "gvttfcnpeimctyf"
        let environment: String = MXEnvironmentSandbox
        
        let metrixConfig = MXConfig(appId: yourAppId, environment: environment)
        
        metrixConfig?.trackerToken = "wyrxsz"
        metrixConfig?.delegate = self

        Metrix.appDidLaunch(metrixConfig)
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
    func metrixSessionIdChanged(_ sessionId: String?) {
        print("Metrix SessionId received: ", sessionId);
    }

    func metrixAttributionChanged(_ attribution: MXAttribution?) {
        print("Metrix user attribution callback called. Status: ", attribution?.attributionStatus)
    }

}

