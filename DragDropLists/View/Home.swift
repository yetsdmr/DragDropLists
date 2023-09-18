//
//  Home.swift
//  DragDropLists
//
//  Created by Yunus Emre Taşdemir on 18.09.2023.
//

import SwiftUI

struct Home: View {
    // Sample Tasks
    @State private var todo: [Task] = [
        .init(title: "Edit Video!", status: .todo)
    ]
    @State private var working: [Task] = [
        .init(title: "Record Video", status: .working)
    ]
    @State private var completed: [Task] = [
        .init(title: "Implement Drag & Drop", status: .completed),
        .init(title: "Update Mockview App!", status: .completed)
    ]
    
    // View Properties
    @State private var currentlyDragging: Task?
    
    var body: some View {
        HStack(spacing: 2) {
            
        }
    }
}

#Preview {
    ContentView()
}
