//
//  CancelButton.swift
//  WidgetExploration
//
//  Created by Godwin IE on 24/12/2023.
//

import SwiftUI

struct CancelButton: View {
    var body: some View {
        
        ZStack{
            Image(systemName: "xmark")
                .font(.callout.bold())
                .clipShape(Circle())
                .foregroundStyle(.black.opacity(0.6))

            Color.gray.opacity(0.1)
                .frame(width: 48, height: 48)
                .clipShape(Circle())
        }
    
    }
}

#Preview {
    CancelButton()
}
