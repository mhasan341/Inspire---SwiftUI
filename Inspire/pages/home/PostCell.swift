//
//  PostCell.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI

struct PostCell: View{
    var aspectRatio = 1
    var body: some View{
        VStack{
            Image("test")
                .resizable()
                .frame(height: (UIScreen.main.bounds.width * CGFloat(aspectRatio)) - 20,
                       alignment: .center)
                
            HStack{
                Image("test")
                    .resizable()
                    .frame(width: 50,
                           height: 50,
                           alignment: .center)
                    .cornerRadius(25)
                VStack(alignment: .leading){
                    Text("MM")
                    Text("1 hour ago")
                        .font(.caption)
                        .foregroundColor(.gray)
                } // VStack of Name and Time
                Spacer()
            }.padding() // HStack
            
            
            Divider().padding(.horizontal)
            Text("Some random text with some more and more and more text. Yet another text").padding()
            
            
        }.background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 10)
             // Root VStack
    }
}

struct Previews_PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
