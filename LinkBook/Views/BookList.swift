//
//  BookList.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/23.
//

import SwiftUI

struct BookList: View {
    @State private var q = ""
    @State private var isPresentedSheet = false
    
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
            List {
                Button(action: presentSheet) {
                    BookRow(book: Book(id: "New Book", title: "New Book...", links: []))
                }
                ForEach(filteredBooks) {book in
                    NavigationLink(value: book) {
                        BookRow(book: book)
                    }
                }
            }
            .listStyle(PlainListStyle())
        }
        .navigationTitle("Books")
        .sheet(isPresented: $isPresentedSheet) {
            NavigationStack {
                BookCreate()
                    .navigationTitle("New Book")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentedSheet = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Create") {
                                isPresentedSheet = false
                            }
                        }
                    }
            }
        }
    }
    
    func presentSheet() {
        isPresentedSheet = true
    }
}

#Preview {
    BookList()
}
