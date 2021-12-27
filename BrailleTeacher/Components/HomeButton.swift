//
//  HomeButton.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct HomeButton: View {
    var text: String
    
    var body: some View {
        Button {
            
        } label: {
            Text(text)
                .padding()
                .background(.blue)
                .foregroundColor(.white)
        }
        .cornerRadius(15)
    }
}

struct HomeButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeButton(text: "Example")
    }
}
