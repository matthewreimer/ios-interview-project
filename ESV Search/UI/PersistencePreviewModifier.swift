//
//  PersistencePreviewModifier.swift
//  ESV Search
//
//  Created by Matt Reimer on 5/8/26.
//

import SwiftUI

struct PersistencePreviewModifier: PreviewModifier {

    static func makeSharedContext() async throws -> PersistenceController {
        return PersistenceController.shared
    }

    func body(content: Content, context: PersistenceController) -> some View {
        content
            .environment(\.managedObjectContext, context.container.viewContext)
    }
}
