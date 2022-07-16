//
//  BrailleTextView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct BrailleTextView: View {
    @ObservedObject var braille: Braille
    var isEditable: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.blue)
                .cornerRadius(10)
            
            VStack {
                Spacer(minLength: 6)
                
                Text(braille.toString)
                    .font(.system(size: 16, weight: .bold))
                
                BrailleView(braille: braille, isEditable: isEditable)
                
                Spacer(minLength: 6)
            }
            
        }
    }
}

struct BrailleTextView_Previews: PreviewProvider {
    static var previews: some View {
        BrailleTextView(braille: Braille(), isEditable: false)
            .frame(width: 100, height: 120)
    }
}
