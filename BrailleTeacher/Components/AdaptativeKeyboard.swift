//
//  AdaptativeKeyboard.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 28/12/21.
//

import SwiftUI

struct AdaptativeKeyboard: View {
    let difficulty: ClassDifficulty
    let possibleAnswers: [BrailleRepresentable]
    @ObservedObject var challenge: ClassChallenge
    @Binding var answer: Braille
    @Binding var currentStep: Int
    
    var body: some View {
        switch challenge.type {
        case .characterToBraille:
            BrailleKeyboardView(
                challenge: challenge,
                answer: $answer,
                currentStep: $currentStep
            )
            .frame(width: 100, height: 150)
            
        case .brailleToCharacter:
            KeyboardView(
                difficulty: difficulty,
                possibleAnswers: possibleAnswers,
                correctAnswer: challenge.question,
                answer: $answer,
                currentStep: $currentStep
            )
        }
        
    }
}

struct AdaptativeKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        AdaptativeKeyboard(
            difficulty: ClassList.classes.first!.difficulty,
            possibleAnswers: ClassList.classes.first!.includedCharacters,
            challenge: ClassList.classes.first!.buildClassPlan().challenges.first!,
            answer: .constant(Braille()),
            currentStep: .constant(0)
        )
    }
}
