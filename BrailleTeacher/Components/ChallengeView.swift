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
    @ObservedObject var challenge: ClassChallenge
    @Binding var currentStep: Int
    
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
                answer: $challenge.answer,
                currentStep: $currentStep
            )
            
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
            currentStep: .constant(0)
        )
    }
}
