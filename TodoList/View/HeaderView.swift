//
//  HeaderView.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/22/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.pink)
                .rotationEffect(.degrees(15))
              
            VStack{
                Text("Hain")
                    .bold()
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                Text("Tracking things out")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }.padding(.top, 30)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3,
                height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
