//
//  InterestViewModel.swift
//  DrivePal
//
//  Created by stephan on 24/04/25.
//

import Foundation

class InterestModel: ObservableObject {
    @Published var items: [InterestItem] = [
        .init(name: "Artwork", isChoosed: false),
        .init(name: "Astrology", isChoosed: false),
        .init(name: "Anime", isChoosed: false),
        .init(name: "Book", isChoosed: false),
        .init(name: "Tattoo", isChoosed: false),
        .init(name: "Podcast", isChoosed: false),
        .init(name: "Money", isChoosed: false),
        .init(name: "Network", isChoosed: false),
        .init(name: "Friend", isChoosed: false),
    ]
    
    func toogle(_ item: InterestItem) {
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index].isChoosed.toggle()
        }
    }
}
