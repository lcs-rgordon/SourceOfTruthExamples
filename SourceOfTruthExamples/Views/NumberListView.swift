//
//  ContentView.swift
//  SourceOfTruthExamples
//
//  Created by Russell Gordon on 2024-04-11.
//

import SwiftUI

struct NumberListView: View {
    
    // MARK: Stored properties
    @State var numbers: [FavouriteNumber] = []
    @State var currentNumber: Int?
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                
                if numbers.isEmpty {
                    ContentUnavailableView(
                        "No numbers yet!",
                        systemImage: "list.number",
                        description: Text("Create some new numbers to get started")
                    )
                } else {
                    List(numbers) { number in
                        NavigationLink(
                            "\(number.value)",
                            destination: NumberDetailView(someNumber: number)
                        )
                    }
                }
                
                Button("New") {
                    currentNumber = Int.random(in: 1...100)
                    let newNumber = FavouriteNumber(value: currentNumber!)
                    numbers.append(newNumber)
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Numbers")
        }
    }
}

#Preview {
    NumberListView()
}
