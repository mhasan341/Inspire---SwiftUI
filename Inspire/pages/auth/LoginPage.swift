//
//  LoginPage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-14.
//

import SwiftUI

struct LoginPage: View {
    
    @State var email = String()
    @State var password = String()
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack{
            ZStack {
                LinearGradient(colors: [.red,.blue], startPoint: .leading, endPoint: .trailing)
                    .frame(height: 200, alignment: .top).ignoresSafeArea().shadow(radius: 15)
                Text("Inspire")
                    .foregroundColor(.white)
                    .bold()
                    .font(.largeTitle)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 50, trailing: 0))
            }
            
            TextField("Email", text: self.$email)
                .padding()
            SecureField("Password", text: self.$password)
                .padding()
            
            Button(action: self.login) {
                Text("Login").bold().frame(width:UIScreen.main.bounds.width - 100, height: 50, alignment: .center).foregroundColor(Color.white)
            }.background(Color.blue).cornerRadius(10).padding()
            Spacer()
            Button(action: self.signup) {
                Text("No Account? Create One")
            }
            Spacer()
        }.sheet(isPresented: self.$isPresented) {
            SignupPage(isPresented: self.$isPresented)
        }
    }
    
    
    func signup(){
        self.isPresented.toggle()
    }
    
    func login(){
        
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage().previewDevice("iPhone 11 Pro")
    }
}
