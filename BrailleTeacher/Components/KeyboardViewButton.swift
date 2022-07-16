//
//  KeyboardViewButton.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 28/12/21.
//

import SwiftUI

struct KeyboardViewButton: View {
    let answer: BrailleRepresentable?
    @Binding var selectedAnswer: Braille
    @Binding var currentStep: Int
    
    var body: some View {
        Button {
            guard let answer = answer else {
                return
            }
            selectedAnswer = Braille(brailleRepresentable: answer)
            currentStep += 1
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
        KeyboardViewButton(
            answer: Braille(brailleRepresentable: Letter.h),
            selectedAnswer: .constant(Braille()),
            currentStep: .constant(0)
        )
    }
}
