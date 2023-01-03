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
        Achievement(image: "Digital For Life Youth Awards 2022, Media Accomplishment", year: 2022, title: "Digital For Life Youth Awards 2022, Media Accomplishment", description: "The Digital For Life Youth Awards is a national award designed for members in the Infocomm CCA to ideate, create and inspire others with their innovations. In 2022, students developed tech and media solutions to address mental health issues faced by youth. Our team devised and ran a social media campaign on instagram, earning them the accomplishment award.", organizers: [Organizer(logo: "IMDA", name: "IMDA")]),
        Achievement(image: "Digital For Life Youth Awards 2022, Tech Accomplishment", year: 2022, title: "Digital For Life Youth Awards 2022, Tech Accomplishment", description: "The Digital For Life Youth Awards is a national award designed for members in the Infocomm CCA to ideate, create and inspire others with their innovations. In 2022, students developed tech and media solutions to address mental health issues faced by youth. Our team developed the app Ment4You, which went on to achieve the accomplishment award.", organizers: [Organizer(logo: "IMDA", name: "IMDA")]),
        Achievement(image: "Imagine Cup Junior Singapore 2022", year: 2022, title: "Imagine Cup Junior Singapore 2022, Top 10 Team", description: "Imagine Cup Junior is an exciting opportunity for students aged 13-18 years old to learn about technology and how it can be used to solve some of the world’s biggest challenges, while participating in a global student challenge. Both of our teams were among the top 10 in this competition, intriguing the judges with their works.", organizers: [Organizer(logo: "Microsoft", name: "Microsoft")]),
        Achievement(image: "Swift Explorers 2022", year: 2022, title: "Swift Explorers 2022, Finalist", description: "The Swift Explorers program is a series of coding related activities using resources from Apple to allow Primary to Junior College students to learn App Design and basic Swift coding on the iPad. Our team and their app, Rirakkusu, was able to distinguish themselves among over thousands of participants to showcase their app in the Apple store at Marina Bay Sands.", organizers: [Organizer(logo: "Apple", name: "Apple")]),
        Achievement(image: "SIS 2022, Remorise", year: 2022, title: "App presentation of Remorise at Swift Innovators' Summit 2022", description: "The Swift Accelerator Programme is an intensive talent development programme for secondary school students with an interest and aptitude for app development and computational thinking. Over 8 months and 180 hours, participants learn to code in Swift, and apply story-telling and design thinking principles to design, build, and release an iOS app of their own. Our very own infocomm member was able to publish her app, Remorise, on the App Store!", organizers: [Organizer(logo: "Apple", name: "Apple"), Organizer(logo: "IMDA", name: "IMDA")]),
        Achievement(image: "3D Tronics", year: 2022, title: "3D Tronics Senior Category, Explorer Award", description: "The 3D-Tronics Challenge is an annual platform supported by IMDA for students to showcase their skills in coding, digital making and problem solving. Our team was able to achieve the explorer award with their microcontroller project!", organizers: [Organizer(logo: "IMDA", name: "IMDA")]),
        Achievement(image: "NOI 2021", year: 2021, title: "National Olympiad in Informatics 2021, Silver medalist", description: "The Singapore National Olympiad in Informatics (NOI) is one of the most prestigious competitions of computing in Singapore. NOI emphasises creativity in problem solving on the one hand, and programming skill and expertise on the other. Our infocomm member was able to clinch the silver medal in the 2021 iteration!", organizers: [Organizer(logo: "NUS Comp", name: "NUS School of Computing"), Organizer(logo: "MOE", name: "MOE")]),
        Achievement(image: "APIC", year: 2021, title: "Asia Pacific Innovation Challenge 2021, 1st Runner Up", description: "Asia Pacific Innovation Challenge is a platform for young people to innovate solutions to tackle vital global issues in the world.The challenge features 200+ young minds who work in teams of 4-5 to pioneer the solutions for the pressing issues that society and businesses face today. Our team managed to achieve 1st Runner up in this competition!", organizers: [Organizer(logo: "AISEC", name: "AISEC")]),
        Achievement(image: "WIT", year: 2021, title: "Women in Tech 2021", description: "The Women in Tech list aims to honour 100 inspiring women and 18 young rising stars who have contributed significantly to Singapore’s emerging tech landscape. Two of our students are featured in the Girls in Tech subcategory!", organizers: [Organizer(logo: "IMDA", name: "IMDA"), Organizer(logo: "SCS", name: "Singapore Computer Society")]),
        Achievement(image: "Imagine Cup Junior", year: 2021, title: "Imagine Cup Junior Singapore 2021, Top 10 Team", description: "Imagine Cup Junior is an exciting opportunity for students aged 13-18 years old to learn about technology and how it can be used to solve some of the world’s biggest challenges, while participating in a global student challenge. Our 2021 team was able to beat countless others, emerging as one of the top 10 teams of this competition!", organizers: [Organizer(logo: "Microsoft", name: "Microsoft")]),
        Achievement(image: "DigiGirlz", year: 2021, title: "Microsoft DigiGirlz 2021, 2nd Runner Up", description: "DigiGirlz is a programme for girls to learn about careers in technology, connect with Microsoft employees, and participate in hands-on hackathons. In 2021, our team was able to achieve the second runner award!", organizers: [Organizer(logo: "Microsoft", name: "Microsoft")])
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
                                            .padding(.bottom, 3)
                                        OrganizerView(organizers: achievement.organizers)
                                    }
                                    .padding(.leading, 13)
                                }
                                .padding(20)
                                .background(Color(getBackgroundColor(for: achievement.year)))
                                .frame(width: 800)
                                .cornerRadius(5)
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
