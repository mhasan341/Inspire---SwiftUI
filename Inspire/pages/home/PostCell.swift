//
//  PostCell.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI

struct PostCell: View{
    
    var currentPost: PostObject
    
    
    var body: some View{
        
        VStack{
            
            if let url = currentPost.imageURL{
                
                AsyncImage(url: URL(string: url)!, placeholder: {Text("Loading...")}) { image in
                    Image(uiImage: image)
                        .resizable()
                }.frame(height: (UIScreen.main.bounds.width * CGFloat(currentPost.aspectRatio)) - 20,
                        alignment: .center)
                
            }
            
                
            HStack{
                Image("test")
                    .resizable()
                    .frame(width: 50,
                           height: 50,
                           alignment: .center)
                    .cornerRadius(25)
                VStack(alignment: .leading){
                    Text("MM")
                    Text(currentPost.date!.convertToPast())
                        .font(.caption)
                        .foregroundColor(.gray)
                } // VStack of Name and Time
                Spacer()
            }.padding() // HStack
            
            
            Divider().padding(.horizontal)
            Text(self.currentPost.comment).padding().frame(maxWidth: .infinity, alignment: .leading)
            
            
        }.background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 10)
             // Root VStack
    }
}
