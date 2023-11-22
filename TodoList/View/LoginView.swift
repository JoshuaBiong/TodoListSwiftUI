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
        VStack{
            //Header
            HeaderView()
            //Login Form
            
            Form {
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.blue)
                        Text("Log In")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 22))
                    }
                }
                ).padding()
                
            }
            
            //Create Account
            VStack{
                Text("New around here?")
                Button("Create an account") {
                    // Route to Registration View
                }
            }
            .padding(.bottom, 50)
            
            Spacer()
        }
    }
}
#Preview {
    LoginView()
}
