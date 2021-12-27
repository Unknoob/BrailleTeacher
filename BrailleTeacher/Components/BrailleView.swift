//
//  BrailleView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct BrailleView: View {
    var brailleRepresentable: BrailleRepresentable
    var isEditable: Bool
    
    var body: some View {
        VStack {
            Spacer(minLength: 4)
            
            HStack{
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: (brailleRepresentable.toInt & 0b10000000) >> 7 == 1,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: (brailleRepresentable.toInt & 0b01000000) >> 6 == 1,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
            }
            
            Spacer(minLength: 4)
            
            HStack {
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: (brailleRepresentable.toInt & 0b00100000) >> 5 == 1,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: (brailleRepresentable.toInt & 0b00010000) >> 4 == 1,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
            }
            
            Spacer(minLength: 4)
            
            HStack {
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: (brailleRepresentable.toInt & 0b00001000) >> 3 == 1,
                    isEditable: isEditable
                )
                
                Spacer(minLength: 4)
                
                BrailleViewButton(
                    isSelected: (brailleRepresentable.toInt & 0b00000100) >> 2 == 1,
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
