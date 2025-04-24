//
//  PersonalityOptionsView.swift
//  DrivePal
//
//  Created by stephan on 11/04/25.
//

import SwiftUI

struct PersonalityOptionsView: View {
    @Binding var path: NavigationPath
    var onComplete: () -> Void
    @EnvironmentObject var personalityList: PersonalityModel
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        Spacer().frame(height: 42)
        
        VStack (alignment: .leading) {
            Text("Personality")
                .font(.title .bold())
            
            Spacer().frame(height: 10)
            
            Text("Tell us who you are - select the personality that matches you best.")
                .font(.body)
            
            Spacer().frame(height: 72)
            
            Image("personalityImg")
                .resizable()
                .frame(width: 263, height: 263, alignment: .center)
                .frame(maxWidth: .infinity)
            
            Spacer().frame(height: 50)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 15) {
                ForEach(personalityList.items) { personality in
                    if personality.isChoosed == false {
                        Button(personality.name, action: {
                            personalityList.selectOnly(personality)
                            print("you click \(personality.name)")
                        })
                            .buttonStyle(.bordered)
                            .foregroundStyle(.gray)
                    } else {
                        Button(personality.name, action: {
                            personalityList.selectOnly(personality)
                            print("you click \(personality.name)")
                        })
                            .buttonStyle(.borderedProminent)
                    }
                }
            }
            
        }
        .padding(.horizontal, 16)
        .toolbar() {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Done", action: {
                    path.append(Route.homeView)
                    onComplete()
                })
            }
        }
        
        Spacer()
    }
}

#Preview {
    StatefulPreviewWrapper(NavigationPath()) { path in
        PersonalityOptionsView(path: path, onComplete: {})
    }
    .environmentObject(PersonalityModel())
}
