//
//  ClassView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import SwiftUI

struct ClassView: View {
    @Binding var isBeingPresented: Bool
    @ObservedObject var classPlan: ClassPlan
    
    var body: some View {
        if classPlan.hasNextChallenge() {
            VStack {
                HStack {
                    Button("Give up") {
                        isBeingPresented = false
                    }
                    .padding()
                    .frame(alignment: .topLeading)
                }
                
                ChallengeView(
                    difficulty: classPlan.difficulty,
                    possibleAnswers: classPlan.possibleAnswers,
                    challenge: classPlan.challenges[classPlan.currentStep],
                    currentStep: $classPlan.currentStep
                )
            }
        } else {
            ClassSuccessView(isBeingPresented: $isBeingPresented)
                .transition(.opacity)
        }
    }
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView(isBeingPresented: .constant(true), classPlan: ClassList.classes.first!.buildClassPlan())
    }
}
