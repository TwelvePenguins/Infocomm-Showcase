//
//  AchievementsView.swift
//  IFC Showcase
//
//  Created by Yuhan Du on 30/12/22.
//

import SwiftUI

struct AchievementsView: View {
    
    var achievementsList: [Achievement] = [Achievement(image: "Digital For Life Youth Awards 2022, Media Accomplishment", year: 2022, title: "Digital For Life Youth Awards 2022, Media Accomplishment"), Achievement(image: "Digital For Life Youth Awards 2022, Tech Accomplishment", year: 2022, title: "Digital For Life Youth Awards 2022, Tech Accomplishment"), Achievement( image: "Imagine Cup Junior Singapore 2022", year: 2022, title: "Imagine Cup Junior Singapore 2022, Top 10 Team"), Achievement(image: "Swift Explorers 2022", year: 2022, title: "Swift Explorers 2022, Finalist"), Achievement(image: "SIS 2022, Remorise", year: 2022, title: "App presentation of Remorise at Swift Innovators' Summit 2022")]
    
    @State var searchTerm = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        List {
            ForEach(achievementsList) { achievement in
                
            }
        }
        .toolbar {
            Text("Test")
        }
    }
}

