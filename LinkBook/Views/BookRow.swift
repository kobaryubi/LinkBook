//
//  BookRow.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/23.
//

import SwiftUI

struct BookRow: View {
    var book: Book
    
    var body: some View {
        HStack {
            Text(book.title)
            Spacer()
        }
    }
}

#Preview {
    BookRow(book: Book(id:"1", title: "book title", links: []))
}
