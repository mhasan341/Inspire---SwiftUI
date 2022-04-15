//
//  TabViewController.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-14.
//

import SwiftUI

struct ITabViewController: View {
    
    @EnvironmentObject var firebaseHandler : DataHandler
    
    var body: some View {
        TabView {
            HomeView(dataHandler: firebaseHandler).tabItem {
                Image(systemName: "house.fill")
            }
            
            ExplorePage(dataHandler: firebaseHandler).tabItem {
                Image(systemName: "bolt.circle.fill")
            }
            
            PostingPage(dataHandler: firebaseHandler).tabItem {
                Image(systemName: "arrowtriangle.up.circle.fill")
            }
            
            NotificationPage(dataHandler: firebaseHandler).tabItem {
                Image(systemName: "tray.fill")
            }
            
            ProfilePage(dataHandler: firebaseHandler).tabItem {
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
