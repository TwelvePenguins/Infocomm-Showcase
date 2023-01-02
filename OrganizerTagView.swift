//
//  OrganizerTagView.swift
//  IFC Showcase
//
//  Created by Yuhan Du on 1/1/23.
//

import SwiftUI

struct OrganizerTagView: View {
    
    var organizer: Organizer
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Image(organizer.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 75, height: 40)
                .padding()
                .background(.white)
                .frame(width: 105, height: 40)
                .cornerRadius(30)
                .padding(2)
            
            Text(organizer.name)
                .font(.system(size: 10, design: .monospaced))
                .foregroundColor(.white)
                .padding(.horizontal)
        }
        .frame(height: 44)
        .overlay {
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .stroke(.white, lineWidth: 1)
        }
    }
}
