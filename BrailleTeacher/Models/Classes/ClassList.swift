//
//  ClassList.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import Foundation

struct ClassList {
    static let classes: [Class] = [
        Class(
            name: "A to E",
            includedCharacters: [
                Letter.a,
                Letter.b,
                Letter.c,
                Letter.d,
                Letter.e
            ],
            isPracticeMode: false
        ),
        Class(
            name: "F to J",
            includedCharacters: [
                Letter.f,
                Letter.g,
                Letter.h,
                Letter.i,
                Letter.j
            ],
            isPracticeMode: false
        ),
        Class(
            name: "A to J",
            includedCharacters: [
                Letter.a,
                Letter.b,
                Letter.c,
                Letter.d,
                Letter.e,
                Letter.f,
                Letter.g,
                Letter.h,
                Letter.i,
                Letter.j
            ],
            isPracticeMode: false
        )
    ]
}
