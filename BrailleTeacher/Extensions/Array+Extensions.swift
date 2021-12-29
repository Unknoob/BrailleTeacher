//
//  Array+Extensions.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 28/12/21.
//

import Foundation

extension Array {
    func object(at index: Int) -> Element? {
        guard self.count > index else {
            return nil
        }
        return self[index]
    }
}
