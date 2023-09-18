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
            TodoView()
            
            WorkingView()
            
            CompletedView()
        }
    }
    
    // Tasks View
    @ViewBuilder
    func TasksView(_ tasks: [Task]) -> some View {
        VStack(alignment: .leading, spacing: 10, content: {
            ForEach(tasks) { task in
                GeometryReader {
                    // Task Row
                    TaskRow(task, $0.size)
                }
                .frame(height: 45)
            }
        })
        .frame(maxWidth: .infinity)
        .padding()
    }
    
    // Task Row
    @ViewBuilder
    func TaskRow(_ task: Task, _ size: CGSize) -> some View {
        Text(task.title)
            .font(.callout)
            .padding(.horizontal, 15)
            .frame(maxWidth: .infinity, alignment: .leading)
            .frame(height: size.height)
            .background(.white, in: .rect(cornerRadius: 10))
    }
    
    // Todo View
    @ViewBuilder
    func TodoView() -> some View {
        NavigationStack {
            ScrollView(.vertical) {
                TasksView(todo)
            }
            .navigationTitle("Todo")
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
        }
    }
    
    // Working View
    @ViewBuilder
    func WorkingView() -> some View {
        NavigationStack {
            ScrollView(.vertical) {
                TasksView(working)
            }
            .navigationTitle("Working")
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
        }
    }
    
    // Completed View
    @ViewBuilder
    func CompletedView() -> some View {
        NavigationStack {
            ScrollView(.vertical) {
                TasksView(completed)
            }
            .navigationTitle("Completed")
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
        }
    }
}

#Preview {
    ContentView()
}
