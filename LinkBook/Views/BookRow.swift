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
            Image(systemName: "plus")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(8)
                .frame(width: 32, height: 32)
                .background(Color.gray.opacity(0.2))
                .foregroundColor(.red)
                .clipShape(RoundedRectangle(cornerRadius: 4))
            Text(book.title)
            Spacer()
        }
    }
}

#Preview {
    BookRow(book: Book(id:"1", title: "book title", links: []))
}
