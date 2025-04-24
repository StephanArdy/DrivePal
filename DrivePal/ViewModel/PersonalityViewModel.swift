//
//  PersonalityViewModel.swift
//  DrivePal
//
//  Created by stephan on 24/04/25.
//

import Foundation
import SwiftUI

class PersonalityModel: ObservableObject {
    @Published var items: [PersonalityItem] = [
        .init(name: "Relaxed", isChoosed: false),
        .init(name: "Energetic", isChoosed: false),
        .init(name: "Chatty", isChoosed: false),
        .init(name: "Quiet", isChoosed: false),
        .init(name: "Analytical", isChoosed: false)
    ]
    
    func selectOnly(_ item: PersonalityItem) {
        for index in items.indices {
            items[index].isChoosed = (items[index].id == item.id)
        }
    }
}
