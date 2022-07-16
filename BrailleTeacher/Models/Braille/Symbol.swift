//
//  Symbol.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import Foundation

// MARK: - Enum
enum Symbol: String, CaseIterable {
    // MARK: - Cases
    case comma = ","
    case dot = "."
    case exclamation = "!"
    case interrogation = "?"
    case singleQuote = "'"
    case colon = ":"
    case semicolon = ";"
}

// MARK: - Identifiable
extension Symbol: Identifiable {
    var id: String {
        return self.rawValue
    }
}

// MARK: - BrailleRepresentable
extension Symbol: BrailleRepresentable {
    init?(intValue: UInt8) {
        guard let symbol = Symbol.allCases.first(where: { $0.toInt == intValue }) else {
            return nil
        }
        self = symbol
    }
    
    var toInt: UInt8 {
        switch self {
        case .comma:
            return 0b00100000
        case .dot:
            return 0b00110100
        case .exclamation:
            return 0b00111000
        case .interrogation:
            return 0b00101100
        case .singleQuote:
            return 0b00001000
        case .colon:
            return 0b00110000
        case .semicolon:
            return 0b00101000
        }
    }
    
    var toString: String {
        return self.rawValue
    }
}
