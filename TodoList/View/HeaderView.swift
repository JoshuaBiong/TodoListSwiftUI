//
//  HeaderView.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/22/23.
//

import SwiftUI

struct HeaderView: View {
    
    
    let title: String
    let subtitle: String
    let angle: Double
    let forgroundColor: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(forgroundColor)
                .rotationEffect(.degrees(angle))
              
            VStack{
                Text(title)
                    .bold()
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                Text(subtitle)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }.padding(.top, 30)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3,
                height: 350)
        .offset(y: -140)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, forgroundColor: .blue)
}
