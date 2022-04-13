//
//  NotificationCellLike.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-13.
//

import SwiftUI

struct NotificationCellLike: View {
    var body: some View{
        
            HStack{
                ZStack{
                    Image("test")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                    NavigationLink(destination: SinglePostView()) {
                        EmptyView()
                    }.buttonStyle(PlainButtonStyle()).frame(width: 50, height: 50, alignment: .center)
                }
                
                VStack(alignment: .leading){
                    Text("New Notifaction").font(.callout)
                    Text("1 hour ago").font(.caption)
                }
                Spacer()
            }.padding()
        
        
    }
}

struct NotificationCellLike_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCellLike()
    }
}
