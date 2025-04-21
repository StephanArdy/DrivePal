//
//  AppRootView.swift
//  DrivePal
//
//  Created by stephan on 21/04/25.
//

import SwiftUI

enum Route: Hashable {
    case interestView
    case personalityView
    case homeView
}

struct AppRootView: View {
    @State private var path = NavigationPath()
    @State private var hasCompletedOnboarding = false
    
    var body: some View {
        
        if hasCompletedOnboarding == false {
            NavigationStack(path: $path) {
                ContentView(path: $path)
                
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .interestView:
                        InterestOptionsView(path: $path)
                    case .personalityView:
                        PersonalityOptionsView(path: $path, onComplete: {
                            hasCompletedOnboarding = true
                        })
                    case .homeView:
                        TabBarView()
                    }
                }
            }
            
            
        } else {
            TabBarView()
        }
        
    }
}

#Preview {
    AppRootView()
}
