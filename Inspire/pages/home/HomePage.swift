//
//  HomePage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI
import Firebase
import RealmSwift

struct HomeView: View{
    
    @ObservedObject var dataHandler: DataHandler
    
    var body: some View{
        NavigationView {
            List{
                ForEach(self.dataHandler.homePagePosts, id: \.id) { post in
                    PostCell(currentPost: post)
                }
                
            }.navigationTitle("Inspire")
        }.onAppear(){
            self.dataHandler.loadHomePagePosts()
        }
    }
    
    
    func loadPosts(){

    }
}
