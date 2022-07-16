//
//  BrailleView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct BrailleView: View {
    @ObservedObject var braille: Braille
    var isEditable: Bool
    
    var body: some View {
        VStack {
            Spacer(minLength: 4)
            
            HStack{
                Spacer(minLength: 4)
                
                BrailleDotButton(
                    isSelected: $braille.isFirstDotSelected,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
                
                BrailleDotButton(
                    isSelected: $braille.isSecondDotSelected,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
            }
            
            Spacer(minLength: 4)
            
            HStack {
                Spacer(minLength: 4)
                
                BrailleDotButton(
                    isSelected: $braille.isThirdDotSelected,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
                
                BrailleDotButton(
                    isSelected: $braille.isFourthDotSelected,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
            }
            
            Spacer(minLength: 4)
            
            HStack {
                Spacer(minLength: 4)
                
                BrailleDotButton(
                    isSelected: $braille.isFifthDotSelected,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
                
                BrailleDotButton(
                    isSelected: $braille.isSixthDotSelected,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
            }
            
            Spacer(minLength: 4)
        }
    }
}

struct BrailleView_Previews: PreviewProvider {
    static var previews: some View {
        BrailleView(braille: Braille(), isEditable: false)
    }
}
