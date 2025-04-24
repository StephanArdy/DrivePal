//
//  PersonalitySettingView.swift
//  DrivePal
//
//  Created by stephan on 21/04/25.
//

import SwiftUI

struct PersonalitySettingView: View {
    @State private var multiSelection = Set<UUID>()
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var personalityList: PersonalityModel
    
    var body: some View {
        List(selection: $multiSelection) {
            HStack {
                Image(systemName: "info.circle.fill")
                    .frame(width: 20, height: 22)
                Text("Choose the one that best describes you")
                    .font(.caption)
            }
            .listRowBackground(Color.clear)
            
            ForEach (personalityList.items) { personality in
                OptionCardView(title: personality.name, isChoosed: personality.isChoosed) {
                    personalityList.selectOnly(personality)
                }
            }
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)
        }
        .navigationTitle("Personality")
        .toolbarVisibility(.hidden, for: .tabBar)
    }
}

#Preview {
    PersonalitySettingView()
        .environmentObject(PersonalityModel())
}
