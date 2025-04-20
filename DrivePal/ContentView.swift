//
//  ContentView.swift
//  DrivePal
//
//  Created by stephan on 11/04/25.
//

import SwiftUI

enum Route: Hashable {
    case interestView
    case personalityView
    case homeView
}

struct ContentView: View {
    let columns = [
        GridItem(.flexible())
    ]
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack (alignment: .center) {
                Text("Getting Started in DrivePal")
                    .font(
                        .largeTitle
                            .bold()
                    )
                    .multilineTextAlignment(.center)
                
                Spacer().frame(height: 55)
                
                LazyVGrid(columns: columns, alignment: .leading, spacing: 38) {
                    HStack {
                        Image(
                            systemName: "heart.text.clipboard.fill"
                        )
                        .resizable()
                        .frame(width: 35, height: 41)
                        
                        Spacer().frame(width: 22)
                        
                        VStack (alignment: .leading){
                            Text("Track Stress level")
                                .font(.subheadline.bold())
                            Text("DrivePal monitors your heart rate through Apple Health to detect stress levels while driving.")
                                .font(.caption)
                        }
                    }
                        
                    HStack {
                        Image(
                            systemName: "car.rear.waves.up.fill"
                        )
                        .resizable()
                        .frame(width: 35, height: 41)
                        
                        Spacer().frame(width: 22)
                        
                        VStack (alignment: .leading){
                            Text("Track Car Movement")
                                .font(.subheadline.bold())
                            Text("DrivePal monitors your car's movement and speed in real-time.")
                                .font(.caption)
                        }
                    }
                        
                    HStack {
                        Image(
                            systemName: "person.2.fill"
                        )
                        .resizable()
                        .frame(width: 35, height: 25)
                        
                        Spacer().frame(width: 22)
                        
                        VStack (alignment: .leading){
                            Text("Virtual Companion")
                                .font(.subheadline.bold())
                            Text("You're never alone on the road. Chat with DrivePal to make every drive feel lighter and more enjoyable.")
                                .font(.caption)
                        }
                    }
                        
                    HStack {
                        Image(
                            systemName: "person.wave.2.fill"
                        )
                        .resizable()
                        .frame(width: 35, height: 35)
                        
                        Spacer().frame(width: 22)
                        
                        VStack (alignment: .leading){
                            Text("Personalized Conversation")
                                .font(.subheadline.bold())
                            Text("Enjoy Conversations tailored to your mood, preferences, and driving conditions for a truly personal experience.")
                                .font(.caption)
                        }
                    }
                }
                .padding(.horizontal, 39)

                Spacer().frame(height: 91)
                
                Button("Continue", action: {
                    path.append(Route.interestView)
                } )
                .buttonStyle(.borderedProminent)
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .interestView:
                        InterestOptionsView(path: $path)
                    case .personalityView:
                        PersonalityOptionsView(path: $path)
                    case .homeView:
                        HomeView()
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
