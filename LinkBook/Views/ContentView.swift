//
//  ContentView.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/17.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
