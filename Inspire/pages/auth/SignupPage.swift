//
//  SignupPage.swift
//  Inspire
//
//  Created by Mahmudul Hasan on 2022-04-14.
//

import SwiftUI

struct SignupPage: View {
    
    @State var email : String = ""
    @State var username: String = ""
    @State var password1: String = ""
    @State var password2: String = ""
    
    @Binding var isPresented: Bool
    
    init(isPresented: Binding<Bool>){
        _isPresented = isPresented
        UITableView.appearance().separatorColor = .clear
        UITableView.appearance().backgroundColor = .white
    }
    
    var body: some View {
        NavigationView{
            Form{
                
                Section{
                    TextField("Email",text: $email)
                        .frame(height: 60, alignment: .center)
                    TextField("Username", text: $username)
                        .frame(height: 60, alignment: .center)
                    SecureField("Password", text: $password1)
                        .frame(height: 60, alignment: .center)
                    SecureField("Confirm Password", text: $password2)
                        .frame(height: 60, alignment: .center)
                }
                
                Section{
                    Button(action: self.signup) {
                        Text("Signup").bold().frame(width:UIScreen.main.bounds.width - 100, height: 50, alignment: .center).foregroundColor(Color.white)
                    }.background(Color.blue).cornerRadius(10).padding()
                }
            }.navigationTitle("Sign Up")
        }
    }
    
    func signup(){
        self.isPresented.toggle()
    }
}

struct SignupPage_Previews: PreviewProvider {
    static var previews: some View {
        SignupPage(isPresented: .constant(false)).previewDevice("iPhone 11 Pro")
    }
}
