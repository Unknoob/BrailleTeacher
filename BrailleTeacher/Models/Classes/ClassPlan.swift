//
//  ClassPlan.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import Foundation

struct ClassPlan {
    let name: String
    let difficulty: ClassDifficulty
    let possibleAnswers: [BrailleRepresentable]
    var challenges: [ClassChallenge]
}
