//
//  BrailleDotButton.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct BrailleDotButton: View {
    @Binding var isSelected: Bool
    var isEditable: Bool
    
    var body: some View {
        Circle()
            .fill(isSelected ? .black : .gray)
            .onTapGesture {
                if isEditable {
                    self.isSelected = !isSelected
                }
            }
    }
}

struct BrailleViewButton_Previews: PreviewProvider {
    static var previews: some View {
        BrailleDotButton(isSelected: .constant(true), isEditable: true)
    }
}
