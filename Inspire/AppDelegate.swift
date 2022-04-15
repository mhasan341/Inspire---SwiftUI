//
//  AppDelegate.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-14.
//

import UIKit
import Firebase
import RealmSwift


var globalRealm = try! Realm()
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
}
