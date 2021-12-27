//
//  HomeView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Braille Teacher")
                    .font(.system(size: 25, weight: .bold))
                    .padding()
                
                Spacer(minLength: 20)
                
                NavigationLink(destination: DictionaryView()) {
                    Text("Dictionary")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                }
                .cornerRadius(15)
                
                HomeButton(text: "Classes")
                
                HomeButton(text: "Free Practice")
                
                Spacer(minLength: 20)
                
                HomeButton(text: "Settings")
                
                Spacer(minLength: 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
