//
//  TODO_ListApp.swift
//  TODO List
//
//  Created by Ceren TAŞSIN on 1.11.2020.
//

import SwiftUI
import UIKit
import Firebase

@main
struct TODO_ListApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    
    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    FirebaseApp.configure()
    authenticationService.signIn()
    
    return true
  }
}
