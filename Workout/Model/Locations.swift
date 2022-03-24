//
//  Locations.swift
//  Workout
//
//  Created by bernhard william on 24/03/2022.
//

import Foundation
import MapKit

struct City: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}


