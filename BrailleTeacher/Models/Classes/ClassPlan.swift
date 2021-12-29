//
//  ClassPlan.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import Foundation

struct ClassPlan {
    let name: String
    let possibleAnswers: [BrailleRepresentable]
    let challenges: [ClassChallenge]
}
