//
//  ListModel.swift
//  Todo List
//
//  Created by olivier geiger on 10/06/2025.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
