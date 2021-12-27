//
//  BrailleTextView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct BrailleTextView: View {
    var brailleRepresentable: BrailleRepresentable
    var isEditable: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .cornerRadius(10)
            
            VStack {
                Spacer(minLength: 6)
                
                Text(brailleRepresentable.toString)
                    .font(.system(size: 14, weight: .bold))
                
                BrailleView(brailleRepresentable: brailleRepresentable, isEditable: isEditable)
                
                Spacer(minLength: 6)
            }
            
        }
    }
}

struct BrailleTextView_Previews: PreviewProvider {
    static var previews: some View {
        BrailleTextView(brailleRepresentable: Letter.a, isEditable: false)
            .frame(width: 100, height: 120)
    }
}
