//
//  ExplorePage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI

struct ExplorePage: View{
    
    @ObservedObject var dataHandler: DataHandler
    @FocusState private var isSearchFocused: Bool
    @State var searchString = String()

  
    var body: some View {
        NavigationView {
            VStack{
                TextField("Search here..", text: $searchString)
                    .padding()
                    .focused($isSearchFocused)
                    .onSubmit {
                        self.search()
                    }
                
                if isSearchFocused {
                    List{
                        
                    }
                }else{
                    QGrid(self.dataHandler.explorePagePosts, columns: 3, vPadding: 10, hPadding: 5) {item in
                        NavigationLink(destination: SinglePostView(currentPost: item.post)) {
                            
                            if let url = item.post.imageURL{
                                
                                AsyncImage(url: URL(string: url)!, placeholder: {Text("Loading...")}) { image in
                                    Image(uiImage: image)
                                        .resizable()
                                }.frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3, alignment: .center)
                                
                            }
                                
                        }
                    }
                }
                
            }.navigationTitle("Explore")
        }.onAppear(){
            self.dataHandler.loadExplorePage()
        }
        
    }
    
    func search(){
        if searchString.isEmpty{
            self.isSearchFocused = false
            print("we stopped search")
        }else{
            self.isSearchFocused = true
            print("we are searching")
        }
    }
}
    
