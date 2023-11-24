//
//  LoginViewViewModel.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/22/23.
//

import Foundation


class LoginViewViewModel : ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""

    init(){}
    
    // Login function
    
    func login() {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Enter valid email"
            return
        }
        
        print("called")
      
    }
    
    // Validating account function
    
    func validate(){
        
    }
    
    
}
