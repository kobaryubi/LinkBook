//
//  BookList.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/23.
//

import SwiftUI

struct BookList: View {
    var books: [Book]
    
    @State private var isPresentedSheet = false
    
    var body: some View {
        List {
            Button(action: presentSheet) {
                BookRow(book: Book(id: "New Book", title: "New Book...", links: []))
            }
            ForEach(books) {book in
                NavigationLink(value: book) {
                    BookRow(book: book)
                }
            }
        }
        .listStyle(PlainListStyle())
        .sheet(isPresented: $isPresentedSheet) {
            NavigationStack {
                BookCreate(isPresentedSheet: $isPresentedSheet)
            }
        }
        
    }
    
    func presentSheet() {
        isPresentedSheet = true
    }
}

#Preview {
    NavigationStack {
        BookList(books: (0...100).map { index in
            Book(id: "\(index)", title: "book title \(index)", links: [])
        })
    }
}
