//
//  Profile.swift
//  Workout
//
//  Created by bernhard william on 10/03/2022.
//

import Foundation

enum Sex: String, CaseIterable{
    case female
    case male
    case other
}

struct Profile: Identifiable {
    
    var id = UUID()
    var firstname: String
    var lastname: String
    var sex: Sex
    
    static var testData = [
        Profile(firstname: "hugo", lastname: "lemanche", sex: .male)
    ]
}

