//
//  PostingPage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI

struct PostingPage: View{

    @State var postText: String = ""
    @State var isPresented: Bool = false
    @State var image: Image?
    @State var uiImage : UIImage?
    
    var body: some View {
        ScrollView{
            VStack{
                HStack{
                    if image != nil {
                        self.image!.resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center).clipped()
                    }else{
                        Image(systemName: "folder.circle.fill").aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center).clipped()
                            .background(Color.gray).cornerRadius(5)
                    }
                    
                    Spacer()
                    Button(action: self.choosePhoto) {
                        Text("Choose Photo")
                    }
                    Spacer()
                    
                    
                }.padding()
                
                VStack(alignment: .leading){
                    Text("Write something below").font(.title)
                    TextView(text: $postText)
                        .frame(height: 100, alignment: .leading)
                }.padding()
                
                Button(action: self.submit) {
                    Text("Submit").bold().frame(width:UIScreen.main.bounds.width - 40, height: 70, alignment: .center).foregroundColor(Color.white)
                }.background(Color.blue).cornerRadius(10).padding()
            }
        }.sheet(isPresented: self.$isPresented) {
            ImagePicker(isShown: self.$isPresented, image: self.$image, uiImage: self.$uiImage)
        }
    }
    
    func choosePhoto(){
        self.isPresented.toggle()
    }
    
    func submit(){
        
    }
}

struct Previews_PostingPage_Previews: PreviewProvider {
    static var previews: some View {
        PostingPage()
    }
}
