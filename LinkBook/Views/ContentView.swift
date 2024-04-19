//
//  ContentView.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/17.
//

import SwiftUI

struct ContentView: View {
    @Environment(Navigation.self) private var navigation
    @State private var searchText = ""
    
    var books = (0...100).map { index in
        Book(id: "\(index)", title: "book title \(index)", links: [])
    }
    
    var filteredBooks: [Book] {
        guard !searchText.isEmpty else {
            return books
        }
        
        return books.filter {book in
            book.title.contains(searchText)
        }
    }
    
    var body: some View {
        @Bindable var navigation = navigation
        
        NavigationStack(path: $navigation.path) {
            BookList(books: filteredBooks)
                .navigationDestination(for: Book.self) { book in
                    BookDetail(book: book)
                }
                .navigationTitle("Books")
                .searchable(
                    text: $searchText,
                    placement: .navigationBarDrawer(displayMode: .always),
                    prompt: "Find in Books"
                )
            
        }
    }
}

#Preview {
    ContentView()
        .environment(Navigation())
}
