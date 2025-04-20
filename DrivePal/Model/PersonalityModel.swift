//
//  PersonalityModel.swift
//  DrivePal
//
//  Created by stephan on 11/04/25.
//

struct Personality: Identifiable {
    var name: String
    var isChoosed: Bool
    var id: String {name}
}
