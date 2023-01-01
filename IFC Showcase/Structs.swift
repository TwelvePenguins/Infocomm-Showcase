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
    var description: String = "yes this is a four line description placeholder while justine works away and i am just too lazy to cut off dummy text so here is my original dummy text anyway this competition is super cool!! and the description is super long to test who the heck will read all of this nonsense"
    var organisers: [Organiser]
}

struct Organiser: Identifiable {
    var id: UUID = UUID()
    var logo: String
    var name: String
}
