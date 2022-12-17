//
//  TabbarView.swift
//  VKApp
//
//  Created by Ivan Konishchev on 13.12.2022.
//

import SwiftUI
import SideBarMenu // Package for displaying the side menu


struct TabbarView: View {
    
    @State var isSidebarVisible = false // Whether or not to display the side menu
    @Binding var isLoggined: Bool // Is the user logged in or not
    @State var islogout: Bool = false // Is the logout button pressed in the side menu settings
    @EnvironmentObject var userData: AppUserData
    
    var body: some View {
        // If the de-logging process is not involved
        if !islogout {
            // TabBar Menu
            TabView {
                // View to display
                NewsView()
                    .badge(2)
                    .tabItem {
                        // Name and picture for the Tabbar menu button
                        Label("News", systemImage: "house.fill")
                    }
                // View to display
                FriendsView()
                    .tabItem {
                        // Name and picture for the Tabbar menu button
                        Label("Friends", systemImage: "person.2.badge.gearshape.fill")
                    }
                // View to display
                MyGroupsView()
                    .badge("!")
                    .tabItem {
                        // Name and picture for the Tabbar menu button
                        Label("Groups", systemImage: "person.3.fill")
                    }
                
            }
            
            SidebarMenu(isSidebarVisible: $isSidebarVisible, islogout: $islogout, userName: userData.userName, userAvatar: userData.userAvatar, userNickName: userData.userNikName)
        } else {
            // If the process of de-logging is involved
            // Text or display another view to display goodbye
            Text("See you soon")
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.isLoggined = false

                    }
                }
        }
        
        
        
    }
}
