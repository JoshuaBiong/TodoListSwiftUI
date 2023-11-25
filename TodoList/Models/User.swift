//
//  User.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/22/23.
//

import Foundation


struct User : Codable {
    let id : String
    let username : String
    let email : String
    let joined : TimeInterval
}
