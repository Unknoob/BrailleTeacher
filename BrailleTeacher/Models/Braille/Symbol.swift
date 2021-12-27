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
    case a = "A"
    
}

// MARK: - Identifiable
extension Symbol: Identifiable {
    var id: String {
        return self.rawValue
    }
}

// MARK: - BrailleRepresentable
extension Symbol: BrailleRepresentable {
    var toInt: UInt8 {
        switch self {
        default:
            return 0b00000000
        }
    }
    
    var toString: String {
        return self.rawValue
    }
}
