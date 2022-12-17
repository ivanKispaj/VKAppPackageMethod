//
//  AppUserData.swift
//  VKApp
//
//  Created by Ivan Konishchev on 14.12.2022.
//
// Authorized user data for the entire application
//
// *Data access only!
//
// *You can change the data via UserDefaults by keys
//


import Foundation
import SwiftUI

@available(iOS 14.0, *)
 final class AppUserData: ObservableObject {
    
    @AppStorage("token") private(set)  var token: String = "" // token received during authorization on VK
    @AppStorage("userId") private(set)  var userId : String = "" // ID of the user for whom the token was received
    @AppStorage("isBiometricAuth") private(set)  var isUsedBiometric: Bool = false // Whether or not to use biometric authorization
    @AppStorage("userName") private(set)  var userName: String = "" // User Full name First Name + Last Name
    @AppStorage("userAvatar") private(set)  var userAvatar: String = "" // string url for User avatar
    @AppStorage("userNikName") private(set)  var userNikName: String = "" // user nik name
    @AppStorage("biometricType") private(set)  var biometricType: String = "" // The type of biometric authentication supported by the device
     
}


