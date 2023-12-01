//
//  RegisterView.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/22/23.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register", subtitle: "Start orginizing todos", angle: -15, forgroundColor: .orange).offset(y:-25)
            
            // Register Form
            Form {
                TextField("Username", text: $viewModel.username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(.none)
                TLButton(title: "Create an account", background: .green){
                    //Register action button
                    viewModel.register()
                }.padding()
                
                                
            }.offset(y:-90)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
