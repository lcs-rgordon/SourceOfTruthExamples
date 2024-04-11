//
//  NumberDetailView.swift
//  SourceOfTruthExamples
//
//  Created by Russell Gordon on 2024-04-11.
//

import SwiftUI

struct NumberDetailView: View {
    
    @Binding var someNumber: FavouriteNumber
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("\(someNumber.value)")
                .font(.largeTitle)
            
            Spacer()
            
            Button("Add 10") {
                someNumber.value += 10
            }
        }
    }
}

#Preview {
    NumberDetailView(someNumber: Binding.constant(FavouriteNumber.example))
}
