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
                    
                    Spacer()
                }
                
                AdaptativeBrailleView(challenge: classPlan.challenges[step])
                    .frame(width: 100, height: 150)
                
                Spacer(minLength: 40)
                
                AdaptativeKeyboard(
                    difficulty: classPlan.difficulty,
                    possibleAnswers: classPlan.possibleAnswers,
                    challenge: classPlan.challenges[step],
                    selectedAnswer: selectedAnswer
                )
                
                Spacer(minLength: 20)
                
                if classPlan.challenges[step].type == .characterToBraille {
                    Button("Accept") {
                        selectedAnswer(Letter.a)
                    }
                }
                
                Spacer(minLength: 20)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    
                }
            }
        } else {
            ClassSuccessView()
        }
    }
    
    func selectedAnswer(_ answer: BrailleRepresentable) {
        classPlan.challenges[step].answer = answer
        if step < classPlan.challenges.count - 1 {
            step += 1
        } else {
            finished = true
        }
    }
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView(isBeingPresented: .constant(true), classPlan: ClassList.classes.first!.buildClassPlan())
    }
}

