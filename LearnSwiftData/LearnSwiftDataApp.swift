//
//  LearnSwiftDataApp.swift
//  LearnSwiftData
//
//  Created by baisampayan saha on 7/14/24.
//

import SwiftUI
import SwiftData

@main
struct LearnSwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
        
    }
}
