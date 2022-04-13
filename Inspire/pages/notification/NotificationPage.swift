//
//  NotificationPage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI

struct NotificationPage: View{
    
    init(){
        UITableView.appearance().separatorColor = .gray
    }
    
    var body: some View{
        
        NavigationView {
            List{
                    ForEach(0..<30) { item in
                        NotificationCellLike().listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
            }.navigationTitle("Notifications")
        }
        
        }
}

struct Previews_NotificationPage_Previews: PreviewProvider {
    static var previews: some View {
        NotificationPage()
    }
}
