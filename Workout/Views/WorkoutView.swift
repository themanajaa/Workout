//
//  WorkoutView.swift
//  Workout
//
//  Created by abdelmlek sami on 03/03/2022.
//

import SwiftUI
import MapKit

struct WorkoutView: View {
    
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    @State private var action: Int? = 0

        let annotations = [
            City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 47.639674, longitude: 6.863849)),
            City(name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508))
        ]
    var body: some View {
        VStack{
            
            HStack{
                Text("🚲 3 mars 2022")
                    .frame( alignment: .topLeading)
                
            }
            
            Map(coordinateRegion: $region, annotationItems: annotations) {
                        MapPin(coordinate: $0.coordinate)
                    }
                    .frame(width: 400, height: 500)
            
            HStack{
                VStack{
                    Text("Distance")
                        .font(.system(size: 20))
                        .padding()
                    Text("0m")
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                    Spacer()
                }
                Divider()
                    .padding(.vertical)
                VStack{
                    Text("Time")
                        .font(.system(size: 20))
                        .padding()
                    Text("0:0:33")
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                    Spacer()
                }
                Divider()
                    .padding(.vertical)
                VStack{
                    Text("Speed")
                        .font(.system(size: 20))
                        .padding()
                    Text("0.00h")
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                    Spacer()
                        
                }
                
                
                
            }
            Divider()
                .padding(.horizontal, 0)
            Spacer()
        }
    }
}
                    
                   


struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
