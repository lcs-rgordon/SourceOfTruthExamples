//
//  SourceOfTruthExamplesApp.swift
//  SourceOfTruthExamples
//
//  Created by Russell Gordon on 2024-04-11.
//

import SwiftData
import SwiftUI

@main
struct SourceOfTruthExamplesApp: App {
    var body: some Scene {
        WindowGroup {
            NumberListView()
                .modelContainer(for: FavouriteNumber.self)
        }
    }
}
