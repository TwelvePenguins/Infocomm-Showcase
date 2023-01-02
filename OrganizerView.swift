//
//  OrganizerView.swift
//  IFC Showcase
//
//  Created by Yuhan Du on 2/1/23.
//

import SwiftUI

struct OrganizerView: View {
    
    var organizers: [Organizer]
    
    var body: some View {
        HStack {
            ForEach(organizers) { organizer in
                OrganizerTagView(organizer: organizer)
            }
        }
    }
}
