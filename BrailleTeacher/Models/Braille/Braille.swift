//
//  Braille.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 16/07/22.
//

import Foundation

class Braille: ObservableObject {
    var brailleRepresentable: BrailleRepresentable? {
        let intValue = getIntegerValue()
        return Symbol(intValue: intValue) ??
        Number(intValue: intValue) ??
        Letter(intValue: intValue)
    }
    
    @Published var isFirstDotSelected: Bool
    @Published var isSecondDotSelected: Bool
    @Published var isThirdDotSelected: Bool
    @Published var isFourthDotSelected: Bool
    @Published var isFifthDotSelected: Bool
    @Published var isSixthDotSelected: Bool
    
    init() {
        self.isFirstDotSelected = false
        self.isSecondDotSelected = false
        self.isThirdDotSelected = false
        self.isFourthDotSelected = false
        self.isFifthDotSelected = false
        self.isSixthDotSelected = false
    }
    
    init(brailleRepresentable: BrailleRepresentable) {
        self.isFirstDotSelected = brailleRepresentable.isFirstDotSelected
        self.isSecondDotSelected = brailleRepresentable.isSecondDotSelected
        self.isThirdDotSelected = brailleRepresentable.isThirdDotSelected
        self.isFourthDotSelected = brailleRepresentable.isFourthDotSelected
        self.isFifthDotSelected = brailleRepresentable.isFifthDotSelected
        self.isSixthDotSelected = brailleRepresentable.isSixthDotSelected
    }
    
    init(
        isFirstDotSelected: Bool,
        isSecondDotSelected: Bool,
        isThirdDotSelected: Bool,
        isFourthDotSelected: Bool,
        isFifthDotSelected: Bool,
        isSixthDotSelected: Bool
    ) {
        self.isFirstDotSelected = isFirstDotSelected
        self.isSecondDotSelected = isSecondDotSelected
        self.isThirdDotSelected = isThirdDotSelected
        self.isFourthDotSelected = isFourthDotSelected
        self.isFifthDotSelected = isFifthDotSelected
        self.isSixthDotSelected = isSixthDotSelected
    }
    
    func getIntegerValue() -> UInt8 {
        var integerValue: UInt8 = 0x0
        
        if isFirstDotSelected {
            integerValue &= 0x8
        }
        if isSecondDotSelected {
            integerValue &= 0x7
        }
        if isThirdDotSelected {
            integerValue &= 0x6
        }
        if isFourthDotSelected {
            integerValue &= 0x5
        }
        if isFifthDotSelected {
            integerValue &= 0x4
        }
        if isSixthDotSelected {
            integerValue &= 0x3
        }
        
        return integerValue
    }
}

extension Braille: BrailleRepresentable {
    var toInt: UInt8 {
        return brailleRepresentable?.toInt ?? 0b00000000
    }
    
    var toString: String {
        return brailleRepresentable?.toString ?? ""
    }
}
