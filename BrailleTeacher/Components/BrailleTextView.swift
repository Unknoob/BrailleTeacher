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
        VStack {
            Text(symbol.rawValue)
                .font(.system(size: 14, weight: .bold))
            
            BrailleView(symbol: symbol, isEditable: isEditable)
        }
    }
}

struct BrailleTextView_Previews: PreviewProvider {
    static var previews: some View {
        BrailleTextView(symbol: .a, isEditable: false)
    }
}
