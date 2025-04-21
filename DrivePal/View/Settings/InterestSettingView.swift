//
//  InterestSettingView.swift
//  DrivePal
//
//  Created by stephan on 21/04/25.
//

import SwiftUI

struct InterestSettingView: View {
    var body: some View {
        List {
            HStack {
                Image(systemName: "info.circle.fill")
                    .frame(width: 20, height: 22)
                Text("Choose your interest (you can pick more than one)")
                    .font(.caption)
            }
            .listRowBackground(Color.clear)
            
            ForEach (interestList) { interest in
                OptionCardView(title: interest.name, isChoosed: interest.isChoosed)
            }
            .listRowBackground(Color.clear)
            .listRowSeparator(.hidden)
        }
        .navigationTitle("Interest")
    }
}

#Preview {
    InterestSettingView()
}
