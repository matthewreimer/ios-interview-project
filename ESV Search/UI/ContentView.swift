import SwiftUI

struct ContentView: View {

    var body: some View {
        Text("You are here")
    }
}

#Preview(traits: .modifier(PersistencePreviewModifier())) {
    ContentView()
        .environment(\.esvAPI, ESVAPI(apiKey: "put ESV API key here"))
}
