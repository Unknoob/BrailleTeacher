//
//  BrailleTextView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct BrailleTextView: View {
    var symbol: Symbol
    var isEditable: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .cornerRadius(10)
            
            VStack {
                Spacer(minLength: 6)
                
                Text(symbol.rawValue)
                    .font(.system(size: 14, weight: .bold))
                
                BrailleView(symbol: symbol, isEditable: isEditable)
                
                Spacer(minLength: 6)
            }
            
        }
    }
}

struct BrailleTextView_Previews: PreviewProvider {
    static var previews: some View {
        BrailleTextView(symbol: .a, isEditable: false)
            .frame(width: 100, height: 120)
    }
}
