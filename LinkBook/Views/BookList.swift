//
//  BookList.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/23.
//

import SwiftUI

struct BookList: View {
    var books = [
        Book(id: "1", title: "book title 1"),
        Book(id: "2", title: "book title 2"),
    ]
    
    var body: some View {
        List(books) { book in
            NavigationLink(value: book) {
                BookRow(book: book)
            }
        }
        .navigationTitle("Books")
    }
}

#Preview {
    BookList()
}
