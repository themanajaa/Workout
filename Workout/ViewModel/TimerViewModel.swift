//
//  TimerViewModel.swift
//  Workout
//
//  Created by sami abdelmlek on 17/03/2022.
//

import SwiftUI
import MapKit
import CoreLocation

class TimerViewModel: NSObject, ObservableObject, CLLocationManagerDelegate{
    @Published var trajets: [Trajet] = []
    
    
    func getTrajets(){
        trajets.append(contentsOf: Trajet.testData)
    }
    //func addTrajet(distance: Double, time: String, speed: Double){
        //let newTrajet = Trajet(distance: <#T##Double#>, time: <#T##String#>, speed: <#T##Double#>)
        //trajets.append(newTrajet)
    //}
    
    
    
    
    
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40, longitude: 120), span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100))
    @Published var firsttLocation: CLLocation?
    @Published var lastLocation: CLLocation?
    @Published var distance: Double = 0.0
    @Published var s: String = ""
    
    let locationManager = CLLocationManager()
    
    override init() {
        super.init()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let latestLocation = locations.first else {
            return
        }
        
        guard let firstLocation = locations.last else {
            return
        }
        firsttLocation=firstLocation
        lastLocation=latestLocation
        //firsttLocation=CLLocation(latitude: firstLocation.coordinate.latitude, longitude: firstLocation.coordinate.longitude)
        //lastLocation=CLLocation(latitude: latestLocation.coordinate.latitude, longitude: latestLocation.coordinate.longitude)
        distance = firstLocation.distance(from: latestLocation) / 1000
        s = String(format: "%.2f", distance)
        print(String(format: "Distance parcourue: %.01fkm", distance))
        /*DispatchQueue.main.async{
            self.region = MKCoordinateRegion(center: latestLocation.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
        }*/
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error.localizedDescription)
    }
}
