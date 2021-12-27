//
//  DictionaryView.swift
//  BrailleTeacher
//
//  Created by Gabriel Beltrame Silva on 26/12/21.
//

import SwiftUI

struct DictionaryView: View {
    
    let columns = [
        GridItem(.adaptive(minimum: 60, maximum: 80))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(Symbol.allCases) { symbol in
                    BrailleTextView(symbol: symbol, isEditable: false)
                        .frame(minHeight: 120, maxHeight: 140)
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
