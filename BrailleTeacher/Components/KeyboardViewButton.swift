//
//  KeyboardViewButton.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 28/12/21.
//

import SwiftUI

struct KeyboardViewButton: View {
    let answer: BrailleRepresentable?
    var action: ((BrailleRepresentable) -> Void)?
    
    var body: some View {
        Button {
            guard let answer = answer else {
                return
            }
            action?(answer)
        } label: {
            Text(answer?.toString ?? " ")
                .frame(width: 30, height: 30)
                .font(.system(size: 24, weight: .bold))
                .padding()
                .background(answer != nil ? .blue : .gray)
                .foregroundColor(.white)
        }
        .cornerRadius(15)
        .padding(5)

    }
}

struct KeyboardViewButton_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardViewButton(answer: Letter.h)
    }
}
