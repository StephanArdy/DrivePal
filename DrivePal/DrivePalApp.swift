//
//  DrivePalApp.swift
//  DrivePal
//
//  Created by stephan on 11/04/25.
//

import SwiftUI

@main
struct DrivePalApp: App {
    @StateObject private var interestList = InterestModel()
    @StateObject private var personalityList = PersonalityModel()

    var body: some Scene {
        WindowGroup {
            AppRootView()
                .environmentObject(interestList)
                .environmentObject(personalityList)
        }
    }
}
