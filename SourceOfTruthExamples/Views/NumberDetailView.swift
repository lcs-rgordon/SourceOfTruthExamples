//
//  NumberDetailView.swift
//  SourceOfTruthExamples
//
//  Created by Russell Gordon on 2024-04-11.
//

import SwiftUI

struct NumberDetailView: View {
    
    let someNumber: FavouriteNumber
    
    var body: some View {
        VStack {
            Text("\(someNumber.value)")
                .font(.largeTitle)
        }
    }
}

#Preview {
    NumberDetailView(someNumber: FavouriteNumber.example)
}
