//
//  ClassView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import SwiftUI

struct ClassView: View {
    @Binding var isBeingPresented: Bool
    
    let classPlan: ClassPlan
    
    var body: some View {
        NavigationView {
            VStack {
                Text(classPlan.challenges.first!.question.toString)
                    .font(.system(size: 26, weight: .bold))
                
                Spacer(minLength: 20)
                
                AdaptativeKeyboard(
                    difficulty: classPlan.difficulty,
                    possibleAnswers: classPlan.possibleAnswers,
                    challenge: classPlan.challenges.first!
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

