//
//  InterestModel.swift
//  DrivePal
//
//  Created by stephan on 11/04/25.
//

struct Interest: Identifiable {
    var name: String
    var isChoosed: Bool
    var category: String
    var id: String {name}
}
