//
//  BrailleViewButton.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct BrailleViewButton: View {
    var isSelected: Bool
    
    var body: some View {
        GeometryReader { metrics in
            Circle()
                .fill(isSelected ? .black : .gray)
        }
    }
}

struct BrailleViewButton_Previews: PreviewProvider {
    static var previews: some View {
        BrailleViewButton(isSelected: true)
    }
}
