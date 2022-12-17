//
//  LoginView.swift
//  VKApp
//
//  Created by Ivan Konishchev on 13.12.2022.
//
// Authorization screen, uses the Authorization package
// User authentication is performed in the authorization package.
// With successful authorization, the value of isLoggined changes to true,
// and user data is written to the default values as in AppUserData via UserDefaults
//
// * Further along the application, data is transmitted via .environmentObject
//

import SwiftUI
import Authorization

struct LoginView: View {
    
    @State var isLoggined: Bool = false  // is the user logged in?
    @State var userData = AppUserData() // User data: avatar, token, user ID, user name...
    
    var body: some View {
        
        ZStack {
            if isLoggined {
                // If the user is logged in, then we call TabBarView
                TabbarView(isLoggined: $isLoggined)
                    .environmentObject(userData)
            } else {
                // If the user is not authorized, then we call the authorization module.
                Authorisation(isLoggined: $isLoggined)
            }
        }
        
    }
}
