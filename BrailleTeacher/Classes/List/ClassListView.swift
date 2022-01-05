//
//  ClassListView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 27/12/21.
//

import SwiftUI

struct ClassListView: View {
    @State var isPresentingModal = false
    @State var selectedClass: Class? = nil
        
    var body: some View {
        ScrollView {
            VStack {
                ForEach(ClassList.classes) { currentClass in
                    BlueButton(text: currentClass.name) {
                        selectedClass = currentClass
                        isPresentingModal.toggle()
                    }
                }
            }
            // Workaround to State not being updated when not observed
            Text(selectedClass?.name ?? "")
                .hidden()
        }
        .navigationTitle("Classes")
        
        .fullScreenCover(isPresented: $isPresentingModal, onDismiss: nil) {
            ClassView(
                isBeingPresented: $isPresentingModal,
                classPlan: selectedClass!.buildClassPlan()
            )
        }
    }
}

struct ClassListView_Previews: PreviewProvider {
    static var previews: some View {
        ClassListView()
    }
}
