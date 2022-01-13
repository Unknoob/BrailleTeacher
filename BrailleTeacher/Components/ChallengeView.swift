//
//  ChallengeView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 05/01/22.
//

import SwiftUI

struct ChallengeView: View {
    let difficulty: ClassDifficulty
    let possibleAnswers: [BrailleRepresentable]
    var challenge: ClassChallenge
    let selectedAnswer: ((BrailleRepresentable) -> Void)?
    
    var body: some View {
        VStack {
            Spacer()
            
            AdaptativeBrailleView(challenge: challenge)
                .frame(width: 100, height: 150)
            
            Spacer(minLength: 40)
            
            AdaptativeKeyboard(
                difficulty: difficulty,
                possibleAnswers: possibleAnswers,
                challenge: challenge,
                selectedAnswer: selectedAnswer
            )
            
            Spacer(minLength: 20)
            
            if challenge.type == .characterToBraille {
                BlueButton(text: "Accept") {
                    // TODO: Get correct BrailleRepresentable from AdaptativeKeyboard
                    selectedAnswer?(Letter.a)
                }
            }
            
            Spacer(minLength: 20)
        }
        .transition(.opacity)
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        let classPlan = ClassList.classes.first!.buildClassPlan()
        ChallengeView(
            difficulty: classPlan.difficulty,
            possibleAnswers: classPlan.possibleAnswers,
            challenge: classPlan.challenges[0],
            selectedAnswer: nil
        )
    }
}
