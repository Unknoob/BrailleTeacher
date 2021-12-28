//
//  KeyboardView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 28/12/21.
//

import SwiftUI

struct KeyboardView: View {
    let difficulty: ClassDifficulty
    let correctAnswer: BrailleRepresentable
    
    var body: some View {
        let answers = AnswersManager.getAnswers(
            forDifficulty: difficulty,
            correctAnswer: correctAnswer
        )
        VStack {
            ForEach(0 ..< difficulty.rawValue, id: \.self) { line in
                HStack {
                    ForEach(0 ..< difficulty.rawValue, id: \.self) { column in
                        Button(answers[(line * difficulty.rawValue) + column].toString) {
                            print("answers[line * column].toString")
                        }
                    }
                }
            }
        }
    }
}

struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView(difficulty: .medium, correctAnswer: Letter.k)
    }
}
