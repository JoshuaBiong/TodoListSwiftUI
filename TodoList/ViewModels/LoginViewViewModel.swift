//
//  LoginViewViewModel.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/22/23.
//
import FirebaseAuth
import Foundation


class LoginViewViewModel : ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""

    init(){}
    
    // Login function
    
    func login() {
        //try to login
        guard validate()  else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
      
    }
    
    // Validating account function
    
    func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill in all fields"
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Enter valid email"
            return false
        }
        return true        
    }
    
    
    
}
