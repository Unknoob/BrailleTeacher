//
//  DictionaryView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct DictionaryView: View {
    
    let columns = [
        GridItem(.adaptive(minimum: 60, maximum: 80), spacing: 6)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 6) {
                Section(header: Text("Letters").font(.title)) {
                    ForEach(Letter.allCases) { letter in
                        BrailleTextView(brailleRepresentable: letter, isEditable: false)
                            .frame(minHeight: 120, maxHeight: 140)
                    }
                }
                Section(header: Text("Numbers").font(.title)) {
                    ForEach(Number.allCases) { number in
                        BrailleTextView(brailleRepresentable: number, isEditable: false)
                            .frame(minHeight: 120, maxHeight: 140)
                    }
                }
                
            }
        }
        .navigationTitle("Dictionary")
    }
}

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
