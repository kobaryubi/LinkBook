//
//  BookList.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/23.
//

import SwiftUI

struct BookList: View {
    @State private var q = ""
    
    var books = (0...100).map { index in
        Book(id: "\(index)", title: "book title \(index)", links: [])
    }
    
    var filteredBooks: [Book] {
        if q.isEmpty {
            return books
        }
        
        return books.filter { book in
            book.title.contains(q)
        }
    }
    
    var body: some View {
        VStack {
            TextField(
                "Find in Books",
                text: $q
            )
            List(filteredBooks) { book in
                NavigationLink(value: book) {
                    BookRow(book: book)
                }
            }
            .listStyle(PlainListStyle())
        }
        .navigationTitle("Books")
    }
}

#Preview {
    BookList()
}
