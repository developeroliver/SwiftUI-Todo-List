//
//  ListView.swift
//  Todo List
//
//  Created by olivier geiger on 10/06/2025.
//

import SwiftUI

struct ListView: View {
    
    @State private var items: [ItemModel] = [
        ItemModel(title: "Buy milk", isCompleted: false),
        ItemModel(title: "Learn SwiftUI", isCompleted: true),
        ItemModel(title: "Go for a walk", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    AddView()
                } label: {
                    Text("Add")
                }

            }
        }
    }
}


#Preview {
    NavigationStack {
        ListView()
    }
}
