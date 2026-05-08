import SwiftUI

@main
struct ESVSearchApp: App {

    let persistenceController = PersistenceController.shared
    let api = ESVAPI(apiKey: "put ESV API key here")

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environment(\.esvAPI, api)
        }
    }
}

extension EnvironmentValues {
    @Entry var esvAPI: ESVAPI?
}
