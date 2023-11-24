//
//  RegisterView.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/22/23.
//

import SwiftUI

struct RegisterView: View {
    
    @State var username = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register", subtitle: "Start orginizing todos", angle: -15, forgroundColor: .orange).offset(y:-25)
            
            // Register Form
            Form {
                TextField("Username", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(.none)
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(.none)
                TLButton(title: "Create an account", background: .green){
                    //Register action button
                }.padding()
                
                                
            }.offset(y:-90)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
