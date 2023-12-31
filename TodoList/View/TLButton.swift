//
//  TLButton.swift
//  TodoList
//
//  Created by Joshua P. Biong on 11/23/23.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {

        Button(action: action, label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 22))
            }
            }

        )
        
    }
}

#Preview {
    TLButton(title: "Value", background: .blue) {
        //Action/ Function
    }
}
