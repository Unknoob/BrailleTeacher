//
//  Letter.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import Foundation

// MARK: - Enum
enum Letter: String, CaseIterable {
    // MARK: - Cases
    case a = "A"
    case b = "B"
    case c = "C"
    case d = "D"
    case e = "E"
    case f = "F"
    case g = "G"
    case h = "H"
    case i = "I"
    case j = "J"
    case k = "K"
    case l = "L"
    case m = "M"
    case n = "N"
    case o = "O"
    case p = "P"
    case q = "Q"
    case r = "R"
    case s = "S"
    case t = "T"
    case u = "U"
    case v = "V"
    case w = "W"
    case x = "X"
    case y = "Y"
    case z = "Z"
}

// MARK: - Identifiable
extension Letter: Identifiable {
    var id: String {
        return self.rawValue
    }
}

// MARK: - BrailleRepresentable
extension Letter: BrailleRepresentable {
    var toInt: UInt8 {
        switch self {
        case .a:
            return 0b10000000
        case .b:
            return 0b10100000
        case .c:
            return 0b11000000
        case .d:
            return 0b11010000
        case .e:
            return 0b10010000
        case .f:
            return 0b11100000
        case .g:
            return 0b11110000
        case .h:
            return 0b10110000
        case .i:
            return 0b01100000
        case .j:
            return 0b01110000
        case .k:
            return 0b10001000
        case .l:
            return 0b10101000
        case .m:
            return 0b11001000
        case .n:
            return 0b11011000
        case .o:
            return 0b10011000
        case .p:
            return 0b11101000
        case .q:
            return 0b11111000
        case .r:
            return 0b10111000
        case .s:
            return 0b01101000
        case .t:
            return 0b01111000
        case .u:
            return 0b10001100
        case .v:
            return 0b10101100
        case .w:
            return 0b01110100
        case .x:
            return 0b11001100
        case .y:
            return 0b11011100
        case .z:
            return 0b10011100
        }
    }
    
    var toString: String {
        return self.rawValue
    }
}
