//
//  ClassSuccessView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 30/12/21.
//

import SwiftUI

struct ClassSuccessView: View {
    @Binding var isBeingPresented: Bool
    
    var body: some View {
        VStack {
            Spacer(minLength: 20)
            
            Text("Summary")
                .font(.system(size: 26, weight: .bold))
            
            Spacer(minLength: 20)
            
            BlueButton(text: "Done") {
                isBeingPresented = false
            }
            
            Spacer(minLength: 20)
        }
    }
}

struct ClassSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        ClassSuccessView(isBeingPresented: .constant(true))
    }
}
