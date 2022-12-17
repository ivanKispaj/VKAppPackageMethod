//
//  FriendsView.swift
//  VKApp
//
//  Created by Ivan Konishchev on 13.12.2022.
//
//
// The Friends scanner package is used.
// When creating an object, he needs to pass a link by which he will
// return the selected friend by tap.
//
//
//

import SwiftUI
import FriendsScene  // Package for displaying the user's friends

struct FriendsView: View {
    
    @State var isSelected: Bool = false 
    @EnvironmentObject var userData: AppUserData
    
    var body: some View {
        ZStack {
            FriendsScene(isSelected: $isSelected, token: userData.token, userId: userData.userId)
            
        }
        
    }
}
