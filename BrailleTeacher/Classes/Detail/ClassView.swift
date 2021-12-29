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
    
    var body: some View {
        NavigationView {
            VStack {
                Text(classPlan.challenges[step].question.toString)
                    .font(.system(size: 26, weight: .bold))
                
                Spacer(minLength: 20)
                
                AdaptativeKeyboard(
                    difficulty: classPlan.difficulty,
                    possibleAnswers: classPlan.possibleAnswers,
                    challenge: classPlan.challenges[step],
                    selectedAnswer: { answer in
                        classPlan.challenges[step].answer = answer
                        step += 1
                    }
                )
                
                Spacer(minLength: 20)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Give up") {
                        isBeingPresented = false
                    }
                }
            }
        }
        
    }
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView(isBeingPresented: .constant(true), classPlan: ClassList.classes.first!.buildClassPlan())
    }
}

