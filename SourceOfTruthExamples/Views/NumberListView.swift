//
//  ContentView.swift
//  SourceOfTruthExamples
//
//  Created by Russell Gordon on 2024-04-11.
//

import SwiftData
import SwiftUI

struct NumberListView: View {
    
    // MARK: Stored properties

    // Access the model context (required to do additions, deletions, updates, et cetera)
    @Environment(\.modelContext) var modelContext

    // The list of favourite numbers
    @Query var numbers: [FavouriteNumber]
    
    // The most recently generated number
    @State var currentNumber: Int = 0
    
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
                    let newNumber = FavouriteNumber(value: currentNumber)
                    modelContext.insert(newNumber)
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Numbers")
        }
    }
}

#Preview {
    NumberListView()
        .modelContainer(FavouriteNumber.preview)
}
