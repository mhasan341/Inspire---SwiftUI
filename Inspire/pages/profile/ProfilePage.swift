//
//  ProfilePage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI

struct ProfilePage: View {
    
    var gridData = [
        Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post()
    ]
    
    var body: some View {
        NavigationView {
            VStack{
                
                ProfileHeader()
                
                Divider().frame(width:UIScreen.main.bounds.width - 40,height: 2, alignment: .center)
                
                
                QGrid(gridData, columns: 3, vPadding: 10, hPadding: 5) {item in
                    NavigationLink(destination: SinglePostView()) {
                        item.image
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3, alignment: .center)
                        
                        
                    }
                    
                    
                }
                
                
            }
            .navigationTitle("Profile")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingsPage(username: "Test")) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
        }
    }
    
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
