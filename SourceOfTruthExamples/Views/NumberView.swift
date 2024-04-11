//
//  ContentView.swift
//  SourceOfTruthExamples
//
//  Created by Russell Gordon on 2024-04-11.
//

import SwiftUI

struct NumberView: View {
    
    // MARK: Stored properties
    @State var numbers: [FavouriteNumber] = []
    @State var currentNumber: Int?
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            Spacer()
            
            if let currentNumber = currentNumber {
                Text("\(currentNumber)")
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                Text("You've generated this many numbers: \(numbers.count)")
            } else {
                Text("Generate a new number")
                    .bold()
                
                Image(systemName: "arrow.down")
            }
            
            Spacer()
            
            Button("New") {
                currentNumber = Int.random(in: 1...100)
                let newNumber = FavouriteNumber(value: currentNumber!)
                numbers.append(newNumber)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    NumberView()
}
