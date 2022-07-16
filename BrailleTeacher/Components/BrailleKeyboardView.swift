//
//  BrailleKeyboardView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 10/07/22.
//

import SwiftUI

struct BrailleKeyboardView: View {
    @ObservedObject var challenge: ClassChallenge
    @Binding var answer: Braille
    @Binding var currentStep: Int
    
    var body: some View {
        VStack {
            BrailleView(braille: answer, isEditable: true)
            
            Spacer(minLength: 20)
            
            BlueButton(text: "Accept") {
                currentStep += 1
            }
        }
    }
}

struct BrailleKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        BrailleKeyboardView(
            challenge: ClassList.classes.first!.buildClassPlan().challenges.first!,
            answer: .constant(Braille()),
            currentStep: .constant(0)
        )
    }
}
