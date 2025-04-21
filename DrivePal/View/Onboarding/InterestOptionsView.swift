//
//  InterestOptionsView.swift
//  DrivePal
//
//  Created by stephan on 11/04/25.
//

import SwiftUI

struct InterestOptionsView: View {
    @Binding var path: NavigationPath
    @EnvironmentObject var interestList: InterestModel

    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {       
        Spacer().frame(height: 42)
        
        VStack (alignment: .leading) {
            Text("Interest")
                .font(.title .bold())
            
            Spacer().frame(height: 10)
            
            Text("What are you into? Tap as many as you like!")
                .font(.body)
            
            Spacer().frame(height: 72)
            
            Image("interestImg")
                .resizable()
                .frame(width: 263, height: 263, alignment: .center)
                .frame(maxWidth: .infinity)
            
            Spacer().frame(height: 50)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 15) {
                ForEach(interestList.items) { interest in
                        if interest.isChoosed == false {
                            Button(interest.name, action: {
                                interestList.toogle(interest)
                                print("you click \(interest.name)")
                            })
                                .buttonStyle(.bordered)
                                .foregroundStyle(.gray)
                        } else {
                            Button(interest.name, action: {
                                interestList.toogle(interest)
                                print("you click \(interest.name)")
                            })
                                .buttonStyle(.borderedProminent)
                        }
                    
                }
            }
        }
        .padding(.horizontal, 16)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("Next", action: {
                    path.append(Route.personalityView)
                })
            }
        }
        
        Spacer()
    }
}

#Preview {
    StatefulPreviewWrapper(NavigationPath()) { path in
        InterestOptionsView(path: path)
    }
    .environmentObject(InterestModel())
}
