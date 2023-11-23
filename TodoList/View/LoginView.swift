//
//  LoginView.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/22/23.
//

import SwiftUI


struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "Login", subtitle: "Get things done", angle: 15, forgroundColor: .pink)
            
                //Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    TLButton(title: "Login", background: .blue)
                    {
                        //Action to Login
                    }
                        .padding()
                    
                }.offset(y:-60)                //Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }

            
        }
    }
}
#Preview {
    LoginView()
}
