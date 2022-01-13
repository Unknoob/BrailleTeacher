//
//  ClassView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import SwiftUI

struct ClassView: View {
    @Binding var isBeingPresented: Bool
    @State var step: Int = 0
    @State var classPlan: ClassPlan
    @State var finished: Bool = false
    
    var body: some View {
        if !finished {
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
                    challenge: classPlan.challenges[step],
                    selectedAnswer: selectedAnswer
                )
            }
        } else {
            ClassSuccessView(isBeingPresented: $isBeingPresented)
                .transition(.opacity)
        }
    }
    
    func selectedAnswer(_ answer: BrailleRepresentable) {
        classPlan.challenges[step].answer = answer
        if step < classPlan.challenges.count - 1 {
            withAnimation {
                step += 1
            }
        } else {
            withAnimation {
                finished = true
            }
        }
    }
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView(isBeingPresented: .constant(true), classPlan: ClassList.classes.first!.buildClassPlan())
    }
}
