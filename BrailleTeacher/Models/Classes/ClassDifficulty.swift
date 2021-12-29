//
//  ClassDifficulty.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 28/12/21.
//

import Foundation

enum ClassDifficulty: Int {
    case easy = 2
    case medium = 3
    case hard = 4
}

extension ClassDifficulty {
    func lowered() -> ClassDifficulty? {
        return ClassDifficulty(rawValue: self.rawValue - 1)
    }
    
    func raised() -> ClassDifficulty? {
        return ClassDifficulty(rawValue: self.rawValue + 1)
    }
}
