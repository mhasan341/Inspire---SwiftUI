//
//  NotificationPage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI

struct NotificationPage: View{
    
    @ObservedObject var dataHandler: DataHandler
    
    init(dataHandler: DataHandler){
        UITableView.appearance().separatorColor = .gray
        self.dataHandler = dataHandler
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

