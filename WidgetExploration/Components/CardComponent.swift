//
//  CardComponent.swift
//  WidgetExploration
//
//  Created by Godwin IE on 23/12/2023.
//

import SwiftUI

struct CardComponent: View {
    var body: some View {
        VStack{
            Text("🍕")
                .padding(10)
                .background(.gray.opacity(0.5))
        }
    }
}

#Preview {
    CardComponent()
}
