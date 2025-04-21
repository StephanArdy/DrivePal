//
//  VoiceCardView.swift
//  DrivePal
//
//  Created by stephan on 21/04/25.
//

import SwiftUI

struct VoiceCardView: View {
    var isChoosed: Bool
    
    var body: some View {
        Image(systemName: "person.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .padding(20)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .overlay(content: {
                if isChoosed == true {
                    RoundedRectangle(cornerRadius: 8).stroke(Color.green.opacity(0.5), lineWidth: 2)
                }
            })
    }
}

#Preview {
    VoiceCardView(isChoosed: true)
}
