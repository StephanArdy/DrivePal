//
//  SettingView.swift
//  DrivePal
//
//  Created by stephan on 20/04/25.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Your Interest") {
                    InterestSettingView()
                }
                NavigationLink("Your Personality") {
                    PersonalitySettingView()
                }
                NavigationLink("Preferences") {
                    PreferencesSettingView()
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingView()
}
