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
    let challenge: ClassChallenge
    let selectedAnswer: ((BrailleRepresentable) -> Void)?
    
    var body: some View {
        switch challenge.type {
        case .characterToBraille:
            BrailleView(
                brailleRepresentable: nil,
                isEditable: true
            )
        case .brailleToCharacter:
            KeyboardView(
                difficulty: difficulty,
                possibleAnswers: possibleAnswers,
                correctAnswer: challenge.question,
                selectedAnswer: selectedAnswer
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
            selectedAnswer: nil
        )
    }
}
