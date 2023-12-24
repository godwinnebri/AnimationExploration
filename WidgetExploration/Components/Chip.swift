//
//  Chip.swift
//  WidgetExploration
//
//  Created by Godwin IE on 24/12/2023.
//

import SwiftUI

struct Chip: View {
    var title: String
    var isSelected: Bool
    
    var body: some View {
        
        Text(title)
            .font(.callout.bold())
            .padding(12)
            .foregroundStyle(.black.opacity(isSelected ? 0.8 : 0.5))
            .clipShape(Capsule())
            .overlay(
                Capsule()
                    .stroke(.black.opacity(isSelected ? 0.4 : 0.1))
            )
    }
}

#Preview {
    Chip(title: "Lunch", isSelected: true)
}
