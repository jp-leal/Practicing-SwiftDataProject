//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Joao Leal on 31/07/2024.
//

import SwiftUI
import SwiftData
@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: User.self)
        }
    }
}
