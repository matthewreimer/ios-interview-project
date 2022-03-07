//
//  ESV_SearchApp.swift
//  ESV Search
//
//  Created by Matt Robertson on 3/7/22.
//

import SwiftUI

@main
struct ESV_SearchApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
