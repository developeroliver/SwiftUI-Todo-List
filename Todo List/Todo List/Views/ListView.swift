//
//  ListView.swift
//  Todo List
//
//  Created by olivier geiger on 10/06/2025.
//

import SwiftUI

struct ListView: View {
    
    @Environment(ListViewModel.self) private var listViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear(duration: 0.25)) {
                            listViewModel.update(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
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
                        .environment(listViewModel)
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
            .environment(ListViewModel())
    }
}
