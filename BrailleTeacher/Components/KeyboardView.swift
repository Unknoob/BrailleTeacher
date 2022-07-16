//
//  KeyboardView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 28/12/21.
//

import SwiftUI

struct KeyboardView: View {
    let difficulty: ClassDifficulty
    let possibleAnswers: [BrailleRepresentable]
    let correctAnswer: BrailleRepresentable
    @Binding var answer: Braille
    @Binding var currentStep: Int
    
    var body: some View {
        let answers = AnswersManager.getAnswers(
            forDifficulty: difficulty,
            possibleAnswers: possibleAnswers,
            correctAnswer: correctAnswer
        )
        
        let gridSize = Int(sqrt(Double(answers.count)).rounded(.up))
        
        VStack {
            ForEach(0 ..< gridSize, id: \.self) { line in
                HStack {
                    ForEach(0 ..< gridSize, id: \.self) { column in
                        KeyboardViewButton(
                            answer: answers.object(at: line * gridSize + column),
                            selectedAnswer: $answer,
                            currentStep: $currentStep
                        )
                    }
                }
            }
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView(
            difficulty: .easy,
            possibleAnswers: ClassList.classes.first!.includedCharacters,
            correctAnswer: Letter.a,
            answer: .constant(Braille()),
            currentStep: .constant(0)
        )
    }
}
