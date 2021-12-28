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

class BrailleCharacters {
    static var allCharacters: [BrailleRepresentable] {
        return Symbol.allCases + Number.allCases + Letter.allCases
    }
}
