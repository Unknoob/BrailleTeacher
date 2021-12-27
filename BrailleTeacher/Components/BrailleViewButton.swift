//
//  BrailleViewButton.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct BrailleViewButton: View {
    @State var isSelected: Bool
    var isEditable: Bool
    
    var body: some View {
        GeometryReader { metrics in
            Circle()
                .fill(isSelected ? .black : .gray)
                .onTapGesture {
                    if isEditable {
                        self.isSelected = !isSelected
                    }
                }
        }
    }
}

struct BrailleViewButton_Previews: PreviewProvider {
    static var previews: some View {
        BrailleViewButton(isSelected: true, isEditable: true)
    }
}
