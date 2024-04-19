//
//  BookCreateView.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/04/14.
//

import SwiftUI

struct BookCreate: View {
    @Binding var isPresentedSheet: Bool
    @State private var title = ""
    
    var isValid: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        return true
    }
    
    var body: some View {
        Form {
            TextField("Book Title", text: $title)
        }
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
                .disabled(!isValid)
            }
        }
    }
}

#Preview {
    NavigationStack {
        BookCreate(isPresentedSheet: .constant(true))
    }
}
