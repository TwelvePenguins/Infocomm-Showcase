//
//  AchievementsView.swift
//  IFC Showcase
//
//  Created by Yuhan Du on 30/12/22.
//

import SwiftUI

struct AchievementsView: View {
    
    var achievementsList: [Achievement] = [
        Achievement(image: "Digital For Life Youth Awards 2022, Media Accomplishment", year: 2022, title: "Digital For Life Youth Awards 2022, Media Accomplishment", organisers: [Organiser(logo: "IMDA", name: "IMDA")]),
        Achievement(image: "Digital For Life Youth Awards 2022, Tech Accomplishment", year: 2022, title: "Digital For Life Youth Awards 2022, Tech Accomplishment", organisers: [Organiser(logo: "IMDA", name: "IMDA")]),
        Achievement(image: "Imagine Cup Junior Singapore 2022", year: 2022, title: "Imagine Cup Junior Singapore 2022, Top 10 Team", organisers: [Organiser(logo: "Microsoft", name: "Microsoft")]),
        Achievement(image: "Swift Explorers 2022", year: 2022, title: "Swift Explorers 2022, Finalist", organisers: [Organiser(logo: "Apple", name: "Apple")]),
        Achievement(image: "SIS 2022, Remorise", year: 2022, title: "App presentation of Remorise at Swift Innovators' Summit 2022", organisers: [Organiser(logo: "Apple", name: "Apple")])
    ]
    
    //yes this is stupid but i dont want to make an achievement manager thank you :)
    
    //APPLE COPY: organisers: [Organiser(logo: "Apple", name: "Apple")]
    //MICROSOFT COPY: organisers: [Organiser(logo: "Microsoft", name: "Microsoft")]
    //IMDA COPY: organisers: [Organiser(logo: "IMDA", name: "IMDA")]
    
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
                                ZStack(alignment: .center) {
                                    RoundedRectangle(cornerRadius: 5)
                                        .foregroundColor(Color(getBackgroundColor(for: achievement.year)))
                                        .frame(width: 120, height: 40)
                                    Text(String(achievement.year))
                                        .font(.system(size: 20, design: .monospaced))
                                        .foregroundColor(.white)
                                }
                                ZStack(alignment: .center){
                                    RoundedRectangle(cornerRadius: 5)
                                        .foregroundColor(Color(getBackgroundColor(for: achievement.year)))
                                        .frame(maxWidth: 800)
                                        .controlSize(.large)
                                    HStack(alignment: .center){
                                        Image(achievement.image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 300)
                                            .mask(RoundedRectangle(cornerRadius: 5))
                                            .padding(15)
                                        VStack(alignment: .center, spacing: 5) {
                                            Text(achievement.title)
                                                .foregroundColor(.white)
                                                .frame(maxWidth: 350)
                                                .font(.system(size: 20, weight: .bold, design: .serif))
                                                .multilineTextAlignment(.center)
                                            #warning(".leading alignment is so goddamn wonky please fix")
                                            Text(achievement.description)
                                                .foregroundColor(.white)
                                                .frame(maxWidth: 400)
                                                .font(.system(size: 12, design: .serif))
                                                .multilineTextAlignment(.center)
                                            OrganiserTagView(organiser: achievement.organisers[0])
                                                .padding(.top, -5)
//                                            ForEach(achievement.organisers) { organiser in
//                                                OrganiserTagView(organiser: organiser)
//                                            }
                                            #warning("something wrong here with the for each")
                                        }
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
