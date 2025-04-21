//
//  TabBarView.swift
//  DrivePal
//
//  Created by stephan on 21/04/25.
//

import SwiftUI

enum TabBar {
    case home
    case settings
}

struct TabBarView: View {
    @State var selection: TabBar = .home
    
    var body: some View {
        TabView(selection: $selection) {
            Tab("Home", systemImage: "house.fill", value: .home) {
                HomeView()
            }
            Tab("Setting", systemImage: "gearshape.fill", value: .settings) {
                SettingView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
