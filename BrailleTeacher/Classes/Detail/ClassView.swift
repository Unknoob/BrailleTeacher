//
//  ClassView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import SwiftUI

struct ClassView: View {
    let classPlan: ClassPlan
    
    var body: some View {
        ScrollView {
            VStack {
                
            }
        }
        .navigationTitle("Class: \(classPlan.name)")
    }
}

struct ClassView_Previews: PreviewProvider {
    static var previews: some View {
        ClassView(classPlan: ClassList.classes.first!.buildClassPlan())
    }
}

