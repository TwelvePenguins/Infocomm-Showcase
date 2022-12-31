//
//  Structs & Data.swift
//  IFC Showcase
//
//  Created by Yuhan Du on 31/12/22.
//

import Foundation

struct Achievement: Identifiable {
    var id: UUID = UUID()
    var image: String
    var year: Int
    var title: String
}

