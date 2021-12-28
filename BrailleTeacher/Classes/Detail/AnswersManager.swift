//
//  AnswersManager.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 28/12/21.
//

import Foundation

class AnswersManager {
    static func getAnswers(forDifficulty difficulty: ClassDifficulty, correctAnswer: BrailleRepresentable) -> [BrailleRepresentable] {
        var answers: [BrailleRepresentable] = [correctAnswer]
        
        while answers.count < difficulty.rawValue * difficulty.rawValue {
            if
                let randomElement = BrailleCharacters.allCharacters.randomElement(),
                !answers.contains(where: { $0.toInt == randomElement.toInt })
            {
                answers.append(randomElement)
            }
        }
        
        return answers.shuffled()
    }
}
