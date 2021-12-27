//
//  BrailleView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct BrailleView: View {
    var symbol: Symbol
    var isEditable: Bool
    
    var body: some View {
        VStack {
            Spacer(minLength: 4)
            
            HStack{
                Spacer(minLength: 4)
                
                BrailleViewButton(isSelected: (symbol.toInt & 0b10000000) >> 7 == 1)
                
                Spacer(minLength: 4)
                
                BrailleViewButton(isSelected: (symbol.toInt & 0b01000000) >> 6 == 1)
                
                Spacer(minLength: 4)
            }
            
            Spacer(minLength: 4)
            
            HStack {
                Spacer(minLength: 4)
                
                BrailleViewButton(isSelected: (symbol.toInt & 0b00100000) >> 5 == 1)
                
                Spacer(minLength: 4)
                
                BrailleViewButton(isSelected: (symbol.toInt & 0b00010000) >> 4 == 1)
                
                Spacer(minLength: 4)
            }
            
            Spacer(minLength: 4)
            
            HStack {
                Spacer(minLength: 4)
                
                BrailleViewButton(isSelected: (symbol.toInt & 0b00001000) >> 3 == 1)
                
                Spacer(minLength: 4)
                
                BrailleViewButton(isSelected: (symbol.toInt & 0b00000100) >> 2 == 1)
                
                Spacer(minLength: 4)
            }
            
            Spacer(minLength: 4)
        }
    }
}

struct BrailleView_Previews: PreviewProvider {
    static var previews: some View {
        BrailleView(symbol: .h, isEditable: false)
    }
}
