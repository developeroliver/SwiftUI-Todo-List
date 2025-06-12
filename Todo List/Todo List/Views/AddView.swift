//
//  AddView.swift
//  Todo List
//
//  Created by olivier geiger on 10/06/2025.
//

import SwiftUI

struct AddView: View {
    
    @Environment(ListViewModel.self) private var listViewModel
    @Environment(\.dismiss) private var dismiss
    @State private var textFieldText: String = ""
    @State private var alertTitle: String = ""
    @State private var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                Button {
                    saveButtonPressed()
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
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    private func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            textFieldText = ""
            dismiss()
        }
    }
    
    private func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long!!! 😨😰😥"
            showAlert.toggle()
           return false
        }
        return true
    }
    
    private func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationStack {
        AddView()
            .environment(ListViewModel())
    }
}
