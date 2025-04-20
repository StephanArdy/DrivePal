//
//  InterestSheetView.swift
//  DrivePal
//
//  Created by stephan on 11/04/25.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let title: String
}

var interestList: [PersonalInterestModel] = [
    PersonalInterestModel (name: "Artwork", isChoosed: false, category: "interest"),
    PersonalInterestModel(name: "Astrology", isChoosed: false, category: "interest"),
    PersonalInterestModel(name: "Anime", isChoosed: true, category: "interest"),
    PersonalInterestModel (name: "Book", isChoosed: false, category: "interest"),
    PersonalInterestModel(name: "Tattoo", isChoosed: false, category: "interest"),
    PersonalInterestModel(name: "Podcast", isChoosed: false, category: "interest"),
    PersonalInterestModel (name: "Money", isChoosed: false, category: "interest"),
    PersonalInterestModel(name: "Network", isChoosed: false, category: "interest"),
    PersonalInterestModel(name: "Friend", isChoosed: true, category: "interest")
]

struct InterestSheetView: View {
    @Binding var activeSheet: ActiveSheet?
    
    var body: some View {
        VStack {
            ForEach(interestList) { interest in
                OptionCardView(title: interest.name, isChoosed: interest.isChoosed)
                Spacer().frame(height: 15)
            }
            
        }
    }
    
}

struct DetailSheetView: View {
    let item: Item
    
    var body: some View {
        Text("Sheet for: \(item.title)")
            .font(.title)
    }
}

struct SheetView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("This is a sheet")
                .font(.largeTitle)
                .padding()
        }
    }
}

//#Preview {
//    InterestSheetView()
//}
