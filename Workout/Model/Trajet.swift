//
//  Trajet.swift
//  Workout
//
//  Created by abdelmlek sami on 24/03/2022.
//

import Foundation

struct Trajet: Identifiable {
    
    var id = UUID()
    var distance: Double
    var time: String
    var speed: Double
    
    static var testData = [
        Trajet(distance: 253.56, time: "0:23:56", speed: 12.23)
    ]
}


