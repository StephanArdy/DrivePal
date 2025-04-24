//
//  OptionCardView.swift
//  DrivePal
//
//  Created by stephan on 11/04/25.
//

import SwiftUI

struct OptionCardView: View {
    let title: String
    let isChoosed: Bool
    let onTap: () -> Void
    
    var body: some View {
        HStack {
            Text(title)
                .font(.body)
            
            Spacer()
            
            if isChoosed == true {
                Image(systemName: "checkmark.circle.fill")
            } else {
                Image(systemName: "circle")
            }
            
        }
        .padding(.vertical, 14)
        .padding(.horizontal, 21)
        .background(Color(.white))
        .clipShape(RoundedRectangle(cornerSize: .init(width: 8, height: 12)))
        .onTapGesture {
            onTap()
        }
    }
    
}

#Preview {
    OptionCardView(title: "Astrology", isChoosed: true, onTap: {})
}
