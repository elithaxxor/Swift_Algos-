//
//  AppDelegateNotification.swift
//  AlgosSwift
//
//  Created by Adel Al-Aali on 2/9/23.
//


/// This is an app delgegate for notifcations using google firebase
import Foundation

import Firebase
import FirebaseMessaging
import UserNotifications
import UserNotificationsUI
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        FirebaseApp.configure()
        
        Messaging.messaging().delegate = self
        UserNotificationCenter.current().delegate = self
        
        UserNotificationCenter().current.requestAuthorization(options [.alert, .sound, .badge]) { sucess, _ in
            guard sucess else { return }
        }
        print("success in regestring ")
        
        application.registerForRemoteNotifications()
        
        // for chat services
        GMServices.provideAPIKey("")
        GMPlacesClient.provideAPIKey("")
        // MARK: Setsup API Client/Session
        self.ChatManager.shared.APISetUp()
        return true
    }
    
    // for Google firebase ≠Firebase
    func messaging (_ messaging: Messaging, didReceiveRegisteration fromToken : String? ) {
        messaging.token { token, _ in
            guard let token = token else { return }
        }
        print("token for firebase is \(token) ")
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


}



