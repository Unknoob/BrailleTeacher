//
//  BrailleView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct BrailleView: View {
    var brailleRepresentable: BrailleRepresentable?
    var isEditable: Bool
    
    var body: some View {
        VStack {
            Spacer(minLength: 4)
            
            HStack{
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: brailleRepresentable?.isFirstDotSelected ?? false,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: brailleRepresentable?.isSecondDotSelected ?? false,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
            }
            
            Spacer(minLength: 4)
            
            HStack {
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: brailleRepresentable?.isThirdDotSelected ?? false,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: brailleRepresentable?.isFourthDotSelected ?? false,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
            }
            
            Spacer(minLength: 4)
            
            HStack {
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: brailleRepresentable?.isFifthDotSelected ?? false,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: brailleRepresentable?.isSixthDotSelected ?? false,
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
        BrailleView(brailleRepresentable: Letter.h, isEditable: false)
    }
}
