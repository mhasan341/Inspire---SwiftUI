//
//  TabViewController.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-14.
//

import SwiftUI

struct ITabViewController: View {
    
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house.fill")
            }
            
            ExplorePage().tabItem {
                Image(systemName: "bolt.circle.fill")
            }
            
            PostingPage().tabItem {
                Image(systemName: "arrowtriangle.up.circle.fill")
            }
            
            NotificationPage().tabItem {
                Image(systemName: "tray.fill")
            }
            
            ProfilePage().tabItem {
                Image(systemName: "person.circle.fill")
            }
        }.tint(.orange)
    }
}

struct TabViewController_Previews: PreviewProvider {
    static var previews: some View {
        ITabViewController()
    }
}
