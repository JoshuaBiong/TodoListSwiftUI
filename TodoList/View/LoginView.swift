//
//  LoginView.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/22/23.
//

import SwiftUI


struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "Login", subtitle: "Get things done", angle: 15, forgroundColor: .pink)
            
                //Login Form
                Form {
                    
                    if !viewModel.errorMessage.isEmpty
                    {
                        Text(viewModel.errorMessage).foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    TLButton(title: "Login", background: .blue){
                        viewModel.login() 
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
