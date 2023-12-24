//
//  DeleteButton.swift
//  WidgetExploration
//
//  Created by Godwin IE on 24/12/2023.
//

import SwiftUI

struct DeleteButton: View {
    var body: some View {
        ZStack{
            Image(systemName: "xmark.bin.fill")
                .font(.callout.bold())
                .padding(20)
                .clipShape(Circle())
                .foregroundStyle(.red.opacity(0.8))

            Color.red.opacity(0.05)
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        }
    }
}

#Preview {
    DeleteButton()
}
