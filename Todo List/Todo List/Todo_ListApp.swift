//
//  Todo_ListApp.swift
//  Todo List
//
//  Created by olivier geiger on 10/06/2025.
//

import SwiftUI
import SwiftData

/*
 MVVM Architecture
 
 Model - data point
 
 View - UI
 
 ViewModel - manages Models for View
 */

@main
struct Todo_ListApp: App {
    
    @State private var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
                    .environment(listViewModel)
            }
        }
    }
}
