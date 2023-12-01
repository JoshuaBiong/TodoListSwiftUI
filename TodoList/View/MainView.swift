//
//  ContentView.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/22/23.
//

import SwiftUI


struct MainView: View {

    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            TodoListView()
        }else{
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
