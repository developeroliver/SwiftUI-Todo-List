//
//  AddView.swift
//  Todo List
//
//  Created by olivier geiger on 10/06/2025.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                Button {
                    textFieldText = ""
                    dismiss()
                } label: {
                    Text("Save")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an item ✏")
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
