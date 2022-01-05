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
            ScrollView {
                VStack {
                    Spacer(minLength: 20)
                    
                    NavigationLink(destination: DictionaryView()) {
                        Text("Dictionary")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                    }
                    .cornerRadius(15)
                    
                    NavigationLink(destination: ClassListView()) {
                        Text("Classes")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                    }
                    .cornerRadius(15)
                    
                    BlueButton(text: "Free Practice")
                    
                    Spacer(minLength: 20)
                    
                    BlueButton(text: "Settings")
                    
                    Spacer(minLength: 20)
                }
            }
            .navigationTitle("Braille Teacher")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
