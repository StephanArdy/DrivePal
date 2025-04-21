//
//  PreferencesSettingView.swift
//  DrivePal
//
//  Created by stephan on 21/04/25.
//

import SwiftUI

struct PreferencesSettingView: View {
    @State private var singleSelection: UUID?
    @Environment(\.dismiss) private var dismiss
    
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
                    VoiceCardView(isChoosed: true)
                    VoiceCardView(isChoosed: false)
                    VoiceCardView(isChoosed: false)
                    VoiceCardView(isChoosed: false)
                    VoiceCardView(isChoosed: false)
                }
            }
            .listRowBackground(Color.clear)
        }
        .navigationTitle("Preferences")
        .toolbar{
            ToolbarItem(placement: .topBarTrailing) {
                Button("Save", action: {
                    print("you click this button")
                    dismiss()
                })
            }
        }
        .toolbarVisibility(.hidden, for: .tabBar)
    }
}

#Preview {
    PreferencesSettingView()
}
