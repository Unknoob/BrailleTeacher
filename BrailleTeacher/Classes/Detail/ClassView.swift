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
            ScrollView {
                VStack {
                    Text(classPlan.challenges.first!.question.toString)
                    KeyboardView(difficulty: .hard, correctAnswer: classPlan.challenges.first!.question)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Give up") {
                        isBeingPresented = false
                    }
                }
            }
            .navigationTitle("Class: \(classPlan.name)")
        }
        
    }
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView(isBeingPresented: .constant(true), classPlan: ClassList.classes.first!.buildClassPlan())
    }
}

