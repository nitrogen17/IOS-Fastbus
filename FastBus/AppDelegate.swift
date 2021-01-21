//
//  AppDelegate.swift
//  FastBus
//
//  Created by Jonorsky Navarrete on 6/22/20.
//  Copyright © 2020 Nitrogen. All rights reserved.
//

import UIKit
import IQKeyboardManager

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        IQKeyboardManager.shared().isEnabled = true

      return true
    }
}

