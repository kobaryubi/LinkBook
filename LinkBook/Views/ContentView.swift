//
//  ContentView.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/17.
//

import SwiftUI

struct ContentView: View {
    @Environment(Navigation.self) private var navigation
    
    var body: some View {
        @Bindable var navigation = navigation
        
        NavigationStack(path: $navigation.path) {
            BookList()
                .navigationDestination(for: Book.self) { book in
                    BookDetail(book: book)
                }
        }
    }
}

#Preview {
    ContentView()
        .environment(Navigation())
}
