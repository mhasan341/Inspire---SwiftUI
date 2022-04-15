//
//  PostingPage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI
import Firebase

struct PostingPage: View{

    @ObservedObject var dataHandler: DataHandler
    
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
        
        let uniqueID = UUID().uuidString
        let ref = Storage.storage().reference().child("posts").child(uniqueID)

        guard let uiImage = uiImage else {
            return
        }

        ref.putData(uiImage.jpegData(compressionQuality: 0.1)!, metadata: nil) { metadata, error in
            if let _ = error{
                return
            }else{

                ref.downloadURL { url, error in



                    if error == nil {

                        let imageH = self.uiImage?.size.height ?? 0
                        let imageW = self.uiImage?.size.width ?? 0
                        let aspectRatio = Double(imageH / imageW)



                        Database.database().reference().child("posts").child(uniqueID).updateChildValues([
                            "imageURL":url?.absoluteString ?? "",
                            "id": uniqueID,
                            "comment" : self.postText,
                            "aspectRatio": aspectRatio,
                            "created": ServerValue.timestamp()
                        ])
                        
                        
                    }
                }


            }
        }
    }
}
