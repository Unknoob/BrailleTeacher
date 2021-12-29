//
//  BrailleRepresentable.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import Foundation

protocol BrailleRepresentable {
    var toInt: UInt8 { get }
    var toString: String { get }
}

extension BrailleRepresentable {
    var isFirstDotSelected: Bool {
        return (self.toInt & 0b10000000) >> 7 == 1
    }
    
    var isSecondDotSelected: Bool {
        return (self.toInt & 0b01000000) >> 6 == 1
    }
    
    var isThirdDotSelected: Bool {
        return (self.toInt & 0b00100000) >> 5 == 1
    }
    
    var isFourthDotSelected: Bool {
        return (self.toInt & 0b00010000) >> 4 == 1
    }
    
    var isFifthDotSelected: Bool {
        return (self.toInt & 0b00001000) >> 3 == 1
    }
    
    var isSixthDotSelected: Bool {
        return (self.toInt & 0b00000100) >> 2 == 1
    }
}

class BrailleCharacters {
    static var allCharacters: [BrailleRepresentable] {
        return Symbol.allCases + Number.allCases + Letter.allCases
    }
}
