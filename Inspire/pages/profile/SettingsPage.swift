//
//  SettingsPage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-10.
//

import SwiftUI


struct SettingsPage: View {
    
    @State var isPresented: Bool = false
    @State var image: Image?
    @State var uiImage : UIImage?
    @State var username: String
    
    var body: some View {
        VStack{
            HStack{
                if image != nil {
                    self.image!.resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center).clipShape(Circle())
                }else{
                    Image(systemName: "folder.circle.fill").aspectRatio(contentMode: .fill).frame(width: 80, height: 80, alignment: .center).clipped()
                        .background(Color.gray).cornerRadius(5).clipShape(Circle())
                }
                
                Spacer()
                Button(action: self.choosePhoto) {
                    Text("Choose Photo")
                }
                Spacer()
                
                
            }.padding()
            
            TextField("Username", text: self.$username)
                .onSubmit {
                    self.submitNewUser()
                }
            Button(action: self.submit) {
                Text("Submit").bold().frame(width:UIScreen.main.bounds.width - 40, height: 70, alignment: .center).foregroundColor(Color.white)
            }.background(Color.blue).cornerRadius(10).padding()
            
            Button(action: self.logout) {
                Text("Logout").bold().frame(width:UIScreen.main.bounds.width - 40, height: 70, alignment: .center).foregroundColor(Color.white)
            }.background(Color.blue).cornerRadius(10).padding()
        }
        .sheet(isPresented: self.$isPresented) {
            ImagePicker(isShown: self.$isPresented, image: self.$image, uiImage: self.$uiImage)
        }
    }
    
    func choosePhoto(){
        self.isPresented.toggle()
    }
    
    func submitNewUser(){
        if username.isEmpty{
            
        }else{
            
        }
    }
    
    func submit(){
        
    }
    
    func logout(){
        
    }
    
    
    
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage(username: "Test")
    }
}
