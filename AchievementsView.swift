//
//  AchievementsView.swift
//  IFC Showcase
//
//  Created by duhan Du on 30/12/22.
//

import SwiftUI

@available(iOS 16.0, *)
struct AchievementsView: View {
    
    var achievementsList: [Achievement] = [
        Achievement(image: "Digital For Life Youth Awards 2022, Media Accomplishment", year: 2022, title: "Digital For Life Youth Awards 2022, Media Accomplishment", organizers: [Organizer(logo: "IMDA", name: "IMDA")]),
        Achievement(image: "Digital For Life Youth Awards 2022, Tech Accomplishment", year: 2022, title: "Digital For Life Youth Awards 2022, Tech Accomplishment", organizers: [Organizer(logo: "IMDA", name: "IMDA")]),
        Achievement(image: "Imagine Cup Junior Singapore 2022", year: 2022, title: "Imagine Cup Junior Singapore 2022, Top 10 Team", organizers: [Organizer(logo: "Microsoft", name: "Microsoft")]),
        Achievement(image: "Swift Explorers 2022", year: 2022, title: "Swift Explorers 2022, Finalist", organizers: [Organizer(logo: "Apple", name: "Apple")]),
        Achievement(image: "SIS 2022, Remorise", year: 2022, title: "App presentation of Remorise at Swift Innovators' Summit 2022", organizers: [Organizer(logo: "Apple", name: "Apple"), Organizer(logo: "IMDA", name: "IMDA")])
    ]
    
    //yes this is stupid but i dont want to make an achievement manager thank you :)
    
    //APPLE COPY: organizers: [Organizer(logo: "Apple", name: "Apple")]
    //MICROSOFT COPY: organizers: [Organizer(logo: "Microsoft", name: "Microsoft")]
    //IMDA COPY: organizers: [Organizer(logo: "IMDA", name: "IMDA")]
    
    @State var searchTerm = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color("BackgroundBlue")
            NavigationStack {
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .center) {
                        ForEach(achievementsList.filter({ achievement in
                            achievement.title.lowercased().contains(searchTerm.lowercased()) || searchTerm.isEmpty
                        })) { achievement in
                            VStack(alignment: .leading, spacing: -7) {
                                Text(String(achievement.year))
                                    .font(.system(size: 20, design: .monospaced))
                                    .foregroundColor(.white)
                                    .frame(width: 120, height: 40)
                                    .background(Color(getBackgroundColor(for: achievement.year)))
                                    .cornerRadius(5)
                                
                                ZStack(alignment: .center){
                                    RoundedRectangle(cornerRadius: 5)
                                        .foregroundColor(Color(getBackgroundColor(for: achievement.year)))
                                        .frame(maxWidth: 800)
                                    
                                    HStack(alignment: .center){
                                        Image(achievement.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 300)
                                            .mask(RoundedRectangle(cornerRadius: 5))
                                            .padding(15)
                                        VStack(alignment: .leading, spacing: 5) {
                                            Text(achievement.title)
                                                .multilineTextAlignment(.leading)
                                                .foregroundColor(.white)
                                                .font(.system(size: 20, weight: .bold, design: .serif))
                                                .frame(maxWidth: 350, alignment: .leading)
                                            
                                            Text(achievement.description)
                                                .foregroundColor(.white)
                                                .frame(maxWidth: 350)
                                                .font(.system(size: 12, design: .serif))
                                                .multilineTextAlignment(.leading)
                                            
//                                            OrganiserTagView(organiser: achievement.organisers[0])
                                            
                                            OrganizerView(organizers: achievement.organizers)
                                        }
//                                        .frame(maxWidth: .infinity)
                                        .padding(.leading, 13)
                                    }
                                    .padding(20)
                                }
                            }
                        }
                        .padding(30)
                    }
                    .padding(.leading, 21)
                    .padding(.trailing, 21)
                    .searchable(text: $searchTerm, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search for an achievement of the past 3 years")
                }
            }
        }
    }
}

func getBackgroundColor(for year: Int) -> String {
    if year == 2022 {
        return "Blue2022"
    } else if year == 2021 {
        return "Blue2021"
    } else {
        return "Blue2020"
    }
}
