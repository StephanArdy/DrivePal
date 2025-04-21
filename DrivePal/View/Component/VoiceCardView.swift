//
//  VoiceCardView.swift
//  DrivePal
//
//  Created by stephan on 21/04/25.
//

import SwiftUI

struct VoiceCardView: View {
    var body: some View {
            Image(systemName: "person.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .padding(20)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
//            .overlay(
//                RoundedRectangle(cornerRadius: 8)
//                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
//            )
        
        
//        if isChoosed == true {
//            
//        }
    }
}

#Preview {
    VoiceCardView()
}
