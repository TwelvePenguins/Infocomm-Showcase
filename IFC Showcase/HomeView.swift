//
//  HomeView.swift
//  IFC Showcase
//
//  Created by Yuhan Du on 30/12/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var showAchievementsView = false
    
    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(Color("BackgroundBlue"))
                Rectangle()
                    .foregroundColor(Color("BackgroundGreen"))
            }
            VStack(alignment: .center) {
                Text("Infocomm\nClub")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 100, weight: .bold, design: .serif))
                Text("Coding")
                    .foregroundColor(.white)
                    .font(.system(size: 50, design: .monospaced))
                HStack {
                    Button {
                        showAchievementsView = true
                    } label: {
                        ZStack(alignment: .center) {
                            Circle()
                                .foregroundColor(Color("AccentBlue"))
                                .frame(width: 300)
                            Text("Explore our achievements")
                                .foregroundColor(.white)
                                .frame(maxWidth: 300)
                                .font(.system(size: 30, design: .monospaced))
                                .multilineTextAlignment(.center)
                        }
                        .padding(.leading, 100)
                        .fullScreenCover(isPresented: $showAchievementsView) {
                            AchievementsView()
                        }
                    }
                    Spacer()
                    Link(destination: URL(string: "https://form.gov.sg/63ae667af03e1f00121e1e44")!) {
                        ZStack(alignment: .center) {
                            Circle()
                                .foregroundColor(Color("AccentGreen"))
                                .frame(width: 300)
                            Text("Sign up")
                                .frame(maxWidth: 300)
                                .foregroundColor(.white)
                                .font(.system(size: 50, design: .monospaced))
                        }
                        .padding(.trailing, 100)
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

