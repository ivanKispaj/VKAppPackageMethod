//
//  MyGroupsView.swift
//  VKApp
//
//  Created by Ivan Konishchev on 13.12.2022.
//
// User Groups display screen
// An additional package is required to display user groups.
// Binding must be passed to the package to return the selected group!
//


import SwiftUI
import GroupsScene // Package for displaying user groups

struct MyGroupsView: View {
    
    @State var isSelected: Bool = false
    @EnvironmentObject var userData: AppUserData

    var body: some View {
        ZStack {
            GroupsScene(token: userData.token, userId: userData.userId, isSelected: $isSelected)
        }
    }
}
