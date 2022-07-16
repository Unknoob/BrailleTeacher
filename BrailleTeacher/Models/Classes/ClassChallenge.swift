//
//  ClassChallenge.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import Foundation

class ClassChallenge: ObservableObject {
    @Published var type: ClassChallengeType
    @Published var question: BrailleRepresentable
    @Published var answer: Braille
    
    init(
        type: ClassChallengeType,
        question: BrailleRepresentable,
        answer: Braille = Braille()
    ) {
        self.type = type
        self.question = question
        self.answer = answer
    }
}

extension ClassChallenge: CustomStringConvertible {
    var description: String {
        switch type {
        case .brailleToCharacter:
            return "Braille To Character: \(question)"
        case .characterToBraille:
            return "Character to Braille: \(question)"
        }
    }
}
