//
//  Number.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import Foundation

// MARK: - Enum
enum Number: String, CaseIterable {
    // MARK: - Cases
    case zero = "0"
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
}

// MARK: - Identifiable
extension Number: Identifiable {
    var id: String {
        return self.rawValue
    }
}

// MARK: - BrailleRepresentable
extension Number: BrailleRepresentable {
    var toInt: UInt8 {
        switch self {
        case .zero:
            return 0b01110000
        case .one:
            return 0b10000000
        case .two:
            return 0b10100000
        case .three:
            return 0b11000000
        case .four:
            return 0b11010000
        case .five:
            return 0b10010000
        case .six:
            return 0b11100000
        case .seven:
            return 0b11110000
        case .eight:
            return 0b10110000
        case .nine:
            return 0b01100000
        }
    }
    
    var toString: String {
        return self.rawValue
    }
}
