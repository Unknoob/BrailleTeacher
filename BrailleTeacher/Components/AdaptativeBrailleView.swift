//
//  AdaptativeBrailleView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 30/12/21.
//

import SwiftUI

struct AdaptativeBrailleView: View {
    @ObservedObject var challenge: ClassChallenge
    
    var body: some View {
        switch challenge.type {
        case .brailleToCharacter:
            BrailleView(braille: Braille(brailleRepresentable: challenge.question), isEditable: false)
        case .characterToBraille:
            Text(challenge.question.toString)
                .font(.system(size: 26, weight: .bold))
        }
    }
}

struct AdaptativeBrailleView_Previews: PreviewProvider {
    static var previews: some View {
        AdaptativeBrailleView(
            challenge: ClassList.classes.first!.buildClassPlan().challenges.first!
        )
    }
}
