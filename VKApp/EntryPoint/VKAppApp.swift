//
//  VKAppApp.swift
//  VKApp
//
//  Created by Ivan Konishchev on 13.12.2022.
//
// The entry point to the app! Calls the authorization screen!
//

import SwiftUI

@main
struct VKAppApp: App {
  
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
