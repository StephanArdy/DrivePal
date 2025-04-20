//
//  HomeView.swift
//  DrivePal
//
//  Created by stephan on 11/04/25.
//

import SwiftUI

enum ActiveSheet: Identifiable{
    case interest
    case personality
    case preferences
    
    var id: String {
        switch self {
        case .interest:
            return "interest"
        case .personality:
            return "personality"
        case .preferences:
            return "preferences"
        }
    }
}

struct HomeView: View {
    @State private var activeSheet: ActiveSheet?
    
    var body: some View {
        Text("DrivePal")
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.largeTitle.bold())
            .padding(.horizontal, 20)
        
        Spacer()
            .frame(height: 44)
        
        VStack(alignment: .center) {
            Image("DrivePal")
                .resizable()
                .frame(width: 134, height: 134)
            
            Text("Start Conversation")
                .font(.body.bold())
            
            Spacer().frame(height: 10)
            
            Text("Personalized your conversation by filling your interest and personality.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .frame(width: 245)
            
            Text("Tap activate button to start.")
                .font(.footnote)
            
            Spacer().frame(height: 66)
            
            Button("Activate", action: {
                print("You click the button!")
            })
            .buttonStyle(.bordered)
            .tint(.blue)
        }
        .navigationBarBackButtonHidden(true)
        
        Spacer()
        
        TabView {
            Tab("Interest", systemImage: "hand.thumbsup.fill") {
                InterestSheetView(activeSheet: $activeSheet)
            }
            Tab("Personality", systemImage: "stethoscope.circle.fill") {
                InterestSheetView(activeSheet: $activeSheet)
            }
            Tab("Preferences", systemImage: "gauge.with.needle.fill") {
                InterestSheetView(activeSheet: $activeSheet)
            }
        }
        .frame(height: 45)
        .sheet(item: $activeSheet) { sheet in
            switch sheet {
            case .interest:
                InterestSheetView(activeSheet: $activeSheet)
            case .personality:
                InterestSheetView(activeSheet: $activeSheet)
            case .preferences:
                InterestSheetView(activeSheet: $activeSheet)
            }
        }
    }
}

#Preview {
    HomeView()
}
