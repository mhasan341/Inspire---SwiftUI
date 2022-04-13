//
//  ProfileHeader.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-13.
//

import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        HStack{
            VStack{
                Text("Following")
                Text("948").fontWeight(.bold)
            }.padding()
            
            VStack{
                
                Image("test").resizable().aspectRatio(contentMode: .fill)
                    .frame(width: 70, height: 70, alignment: .center)
                    .padding(20)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(.blue, lineWidth: 4)
                    )
                    .overlay(
                        Circle().stroke(.white, lineWidth: 1)
                    )
                
                    
                Text("Mahmud").font(.body).fontWeight(.bold)
            }
            
            VStack{
                Text("Follower")
                Text("1252").fontWeight(.bold)
            }.padding()
        }
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
    }
}
