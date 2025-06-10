//
//  Todo_ListApp.swift
//  Todo List
//
//  Created by olivier geiger on 10/06/2025.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 
 View - UI
 
 ViewModel - manages Models for View
 */

@main
struct Todo_ListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
        }
    }
}
