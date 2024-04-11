//
//  FavouriteNumber.swift
//  SourceOfTruthExamples
//
//  Created by Russell Gordon on 2024-04-11.
//

import SwiftData

@Model
class FavouriteNumber: Identifiable {
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
}

extension FavouriteNumber {
    
    @MainActor
    static var preview: ModelContainer {
        
        let container = try! ModelContainer(
            for: FavouriteNumber.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        
        // Add mock data
        container.mainContext.insert(
            FavouriteNumber(value: 28)
        )
        container.mainContext.insert(
            FavouriteNumber(value: 37)
        )
        container.mainContext.insert(
            FavouriteNumber(value: 11)
        )
        
        return container
    }
}

extension FavouriteNumber {
    
    static let example = FavouriteNumber(value: 17)
    
}
