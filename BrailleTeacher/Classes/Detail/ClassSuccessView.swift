//
//  ClassSuccessView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 30/12/21.
//

import SwiftUI

struct ClassSuccessView: View {
    
    var body: some View {
            VStack {
                Text("Sucesso")
                    .font(.system(size: 26, weight: .bold))
                
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Give up") {
//                        isBeingPresented = false
                    }
                }
            }

        
    }
}

struct ClassSuccessView_Previews: PreviewProvider {
    static var previews: some View {
        ClassSuccessView()
    }
}
