//
//  AnswersManager.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 28/12/21.
//

import Foundation

class AnswersManager {
    static func getAnswers(
        forDifficulty difficulty: ClassDifficulty,
        possibleAnswers: [BrailleRepresentable],
        correctAnswer: BrailleRepresentable
    ) -> [BrailleRepresentable] {
        let answersNeeded = difficulty.rawValue * difficulty.rawValue
        
        guard possibleAnswers.count > answersNeeded else {
            if let lowerDifficulty = difficulty.lowered() {
                return getAnswers(
                    forDifficulty: lowerDifficulty,
                    possibleAnswers: possibleAnswers,
                    correctAnswer: correctAnswer
                )
            } else {
                return getAnswers(
                    forDifficulty: difficulty,
                    possibleAnswers: BrailleCharacters.allCharacters,
                    correctAnswer: correctAnswer
                )
            }
        }
        
        var answers: [BrailleRepresentable] = Array(possibleAnswers.shuffled().prefix(answersNeeded))
        
        if answers.contains(where: { $0.toInt == correctAnswer.toInt }) {
            return answers
        } else {
            answers = answers.dropLast()
            answers.append(correctAnswer)
            return answers.shuffled()
        }
    }
}
