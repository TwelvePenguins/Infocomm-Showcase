//
//  OrganiserTagView.swift
//  IFC Showcase
//
//  Created by Yuhan Du on 1/1/23.
//

import SwiftUI

struct OrganiserTagView: View {
    
    var organiser: Organiser
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .stroke(.white, lineWidth: 1)
                .frame(maxWidth: 150)
                .frame(height: 44)
            HStack(alignment: .center) {
                ZStack(alignment: .center) {
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .foregroundColor(.white)
                        .frame(height: 40)
                        .padding(.top, 2)
                        .padding(.bottom, 2)
                        .padding(.leading, 2)
                    Image(organiser.logo)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 75)
                        .frame(height: 40)
                        .padding()
                }
                Text(organiser.name)
                    .font(.system(size: 10, design: .monospaced))
                    .foregroundColor(.white)
            }
            .scaledToFit()
        }
    }
}
