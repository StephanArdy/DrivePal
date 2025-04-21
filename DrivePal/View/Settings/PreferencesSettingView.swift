//
//  PreferencesSettingView.swift
//  DrivePal
//
//  Created by stephan on 21/04/25.
//

import SwiftUI

struct PreferencesSettingView: View {
    @State private var singleSelection: UUID?
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        List(selection: $singleSelection) {
            HStack {
                Image(systemName: "info.circle.fill")
                    .frame(width: 20, height: 22)
                Text("Customize your experience")
                    .font(.caption)
            }
            .listRowBackground(Color.clear)
            
            Section(header: Text("Voice Settings")) {
                LazyVGrid (columns: columns, alignment: .leading, spacing: 20) {
                    VoiceCardView()
                    VoiceCardView()
                    VoiceCardView()
                    VoiceCardView()
                    VoiceCardView()
                }
            }
            .listRowBackground(Color.clear)
        }
        .navigationTitle("Preferences")
        
        
    }
}

#Preview {
    PreferencesSettingView()
}
