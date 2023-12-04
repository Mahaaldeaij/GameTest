//
//  GameTestApp.swift
//  GameTest
//
//  Created by Maha on 20/05/1445 AH.
//

import SwiftUI

@main
struct GameTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
           HomeView()
           //     .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
