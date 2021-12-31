//
//  Class.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import Foundation

struct Class {
    let name: String
    let difficulty: ClassDifficulty
    let includedCharacters: [BrailleRepresentable]
    let isPracticeMode: Bool
}

extension Class: Identifiable {
    var id: String {
        return name
    }
}

extension Class {
    func buildClassPlan() -> ClassPlan {
        var challenges: [ClassChallenge] = []
        
        self.includedCharacters.forEach { includedCharacter in
            challenges.append(
                ClassChallenge(
                    type: .brailleToCharacter,
                    question: includedCharacter
                )
            )
            challenges.append(
                ClassChallenge(
                    type: .characterToBraille,
                    question: includedCharacter
                )
            )
        }
        
        return ClassPlan(
            name: name,
            difficulty: difficulty,
            possibleAnswers: includedCharacters,
            challenges: challenges.shuffled()
        )
    }
}
