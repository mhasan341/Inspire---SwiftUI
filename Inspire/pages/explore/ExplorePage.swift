//
//  ExplorePage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI

struct ExplorePage: View{
    
    @FocusState private var isSearchFocused: Bool
    @State var searchString = String()
     
    var gridData = [
    Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post(),Post()
    ]
    
    
   
    
    var body: some View {
        NavigationView {
            VStack{
                TextField("Search here..", text: $searchString)
                    .focused($isSearchFocused)
                    .onSubmit {
                        self.search()
                    }
                
                if isSearchFocused {
                    List{
                        ForEach(0..<3) { i in
                                              PostCell().listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        }
                    }
                }else{
                    QGrid(gridData, columns: 3, vPadding: 10, hPadding: 5) {item in
                        NavigationLink(destination: SinglePostView()) {
                            item.image
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3, alignment: .center)
                        }
                    }
                }
                
            }.navigationTitle("Explore")
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
            
            
struct ExplorePage_Previews: PreviewProvider {
    static var previews: some View {
        ExplorePage()
    }
}
