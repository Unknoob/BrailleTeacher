//
//  ClassListView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import SwiftUI

struct ClassListView: View {
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(ClassList.classes) { currentClass in
                    NavigationLink(destination: ClassView(classPlan: currentClass.buildClassPlan())) {
                        Text(currentClass.name)
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                    }
                    .cornerRadius(15)
                }
            }
        }
        .navigationTitle("Classes")
    }
}

struct ClassListView_Previews: PreviewProvider {
    static var previews: some View {
        ClassListView()
    }
}
