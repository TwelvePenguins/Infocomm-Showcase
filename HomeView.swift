//
//  HomeView.swift
//  IFC Showcase
//
//  Created by Yuhan Du on 30/12/22.
//

import SwiftUI

@available(iOS 16.0, *)
struct HomeView: View {
    
    @State var showAchievementsView = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .center) {
                HStack(spacing: 0) {
                    BouncyView(icon: "curlybraces") { _ in
                        
                    }
                    .background(Color("BackgroundBlue"))
                    
                    BouncyView(icon: "plus") { _ in
                        
                    }
                    .background(Color("BackgroundGreen"))
                }
                VStack(alignment: .center) {
                    Text("Infocomm\nClub")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 100, weight: .bold, design: .serif))
                    Text("Coding")
                        .foregroundColor(.white)
                        .font(.system(size: 50, design: .monospaced))
                    HStack(alignment: .center) {
                        NavigationLink {
                            AchievementsView()
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
                        }
                        .padding(.leading, 125)
                        Spacer(minLength: 100)
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
                            .padding(.trailing, 125)
                        }
                    }
                }
            }
        }
        .ignoresSafeArea()
    }
}

