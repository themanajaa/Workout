//
//  WorkoutView.swift
//  Workout
//
//  Created by abdelmlek sami on 03/03/2022.
//

import SwiftUI
import MapKit

struct WorkoutView: View {
    
    
    @State private var location = MKCoordinateRegion(center: .init(latitude: 35.677735, longitude: 139.764740), latitudinalMeters: 500, longitudinalMeters: 500) //Affichage autour des coordonnées à afficher, réglage de la plage et définition des coordonnées

    var body: some View {
        VStack{
            
            HStack{
                Text("🚲 3 mars 2022")
                    .frame( alignment: .topLeading)
                
            }
            
            Map(coordinateRegion: self.$location, showsUserLocation: true)
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
