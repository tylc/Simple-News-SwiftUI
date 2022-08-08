//
//  Simple_NewsApp.swift
//  Simple News
//
//  Created by Enric Herce on 27/7/22.
//

import SwiftUI

@main
struct Simple_NewsApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        /*
         let newNavBarAppearance = customNavBarAppearance()
                
            let appearance = UINavigationBar.appearance()
            appearance.scrollEdgeAppearance = newNavBarAppearance
            appearance.compactAppearance = newNavBarAppearance
            appearance.standardAppearance = newNavBarAppearance
            if #available(iOS 15.0, *) {
                appearance.compactScrollEdgeAppearance = newNavBarAppearance
            }
        
         */
        return true

    }
    
    /*
    @available(iOS 13.0, *)
    func customNavBarAppearance() -> UINavigationBarAppearance {
        let customNavBarAppearance = UINavigationBarAppearance()
        
        // Apply a red background.
        customNavBarAppearance.configureWithOpaqueBackground()
        customNavBarAppearance.backgroundColor = .systemRed
        
        // Apply white colored normal and large titles.
        customNavBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        customNavBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        // Apply white color to all the nav bar buttons.
        let barButtonItemAppearance = UIBarButtonItemAppearance(style: .plain)
        barButtonItemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        barButtonItemAppearance.disabled.titleTextAttributes = [.foregroundColor: UIColor.lightText]
        barButtonItemAppearance.highlighted.titleTextAttributes = [.foregroundColor: UIColor.label]
        barButtonItemAppearance.focused.titleTextAttributes = [.foregroundColor: UIColor.white]
        customNavBarAppearance.buttonAppearance = barButtonItemAppearance
        customNavBarAppearance.backButtonAppearance = barButtonItemAppearance
        customNavBarAppearance.doneButtonAppearance = barButtonItemAppearance
        
        return customNavBarAppearance
    }
     */
}
