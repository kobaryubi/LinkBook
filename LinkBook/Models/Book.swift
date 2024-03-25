//
//  Book.swift
//  LinkBook
//
//  Created by Masahiko Kobayashi on 2024/03/22.
//

import Foundation

struct Book: Identifiable, Hashable {
    var id: String
    var title: String
    var links: [Link]
}
