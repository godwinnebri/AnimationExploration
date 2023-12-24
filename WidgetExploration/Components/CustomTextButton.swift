//
//  EditButton.swift
//  WidgetExploration
//
//  Created by Godwin IE on 24/12/2023.
//

import SwiftUI

struct CustomTextButton: View {
    var title : String
    
    var body: some View {
        Text(title)
            .font(.callout.bold())
            .padding(14)
            .background(.gray.opacity(0.1))
            .foregroundStyle(.black.opacity(0.6))
            .clipShape(Capsule())
    }
}

#Preview {
    CustomTextButton(title: "Edit")
}
