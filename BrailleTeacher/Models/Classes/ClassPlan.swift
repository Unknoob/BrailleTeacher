//
//  ClassPlan.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import Foundation
import SwiftUI

class ClassPlan: ObservableObject {
    let name: String
    let difficulty: ClassDifficulty
    let possibleAnswers: [BrailleRepresentable]
    @Published var currentStep: Int
    @Published var challenges: [ClassChallenge]
    
    init(
        name: String,
        difficulty: ClassDifficulty,
        possibleAnswers: [BrailleRepresentable],
        currentStep: Int = 0,
        challenges: [ClassChallenge]
    ) {
        self.name = name
        self.difficulty = difficulty
        self.possibleAnswers = possibleAnswers
        self.currentStep = currentStep
        self.challenges = challenges
    }
    
    func hasNextChallenge() -> Bool {
        return currentStep < challenges.count
    }
}
