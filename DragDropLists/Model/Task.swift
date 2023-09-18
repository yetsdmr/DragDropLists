//
//  Task.swift
//  DragDropLists
//
//  Created by Yunus Emre Taşdemir on 18.09.2023.
//

import SwiftUI

struct Task: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    var status: Status
}

enum Status {
    case todo
    case working
    case completed
}
