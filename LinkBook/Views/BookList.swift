//
//  BookList.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/23.
//

import SwiftUI

struct BookList: View {
    var books = (0...100).map { index in
        Book(id: "\(index)", title: "book title \(index)", links: [])
    }
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(books) { book in
                    NavigationLink(value: book) {
                        BookRow(book: book)
                    }
                }
            }
        }
        .navigationTitle("Books")
    }
}

#Preview {
    BookList()
}
