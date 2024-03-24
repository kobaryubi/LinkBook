//
//  BookDetail.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/24.
//

import SwiftUI

struct BookDetail: View {
    var book: Book
    
    var body: some View {
        Text(book.title)
    }
}

#Preview {
    BookDetail(book: Book(id: "1", title: "book title"))
}
