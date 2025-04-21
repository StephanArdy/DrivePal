//
//  HomeView.swift
//  DrivePal
//
//  Created by stephan on 11/04/25.
//

import SwiftUI

struct HomeView: View {
    
    @State var selection: TabBar = .home
    
    var body: some View {
       
        NavigationStack {
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
            .navigationTitle("DrivePal")
        }
    }
}

#Preview {
    HomeView()
}
