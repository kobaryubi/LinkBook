//
//  LinkBookApp.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/17.
//

import SwiftUI

@main
struct LinkBookApp: App {
    var navigation = Navigation()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(navigation)
        }
    }
}
