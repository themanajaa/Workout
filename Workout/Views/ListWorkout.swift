//
//  ListWorkout.swift
//  Workout
//
//  Created by bernhard william on 17/03/2022.
//

import SwiftUI
import MapKit

struct ListWorkout: View {
    
    @State private var location = MKCoordinateRegion(center: .init(latitude: 35.677735, longitude: 139.764740), latitudinalMeters: 500, longitudinalMeters: 500) //Affichage autour des coordonnées à afficher, réglage de la plage et définition des coordonnées

    var body: some View {
        VStack{
            VStack{
                Text("3 Mars 2022")
                    .foregroundColor(Color.black)
                    .padding()
                    
                HStack(spacing: 10){
                    Map(coordinateRegion: self.$location, showsUserLocation: true)
                            .frame(width: 310, height: 300)
                            .padding(5)
                            .cornerRadius(10)
                    Button{
                        
                    } label : {
                        
                        Image(systemName: "magnifyingglass.circle.fill")
                            .foregroundColor(.gray)
                            .frame(width: 40, height: 40)
                    }
                    
                    
                }
                
            }
            
        }
        .background(Color.white)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray, lineWidth: 1))
        .padding(10)
    }
    
}

struct ListWorkout_Previews: PreviewProvider {
    static var previews: some View {
        ListWorkout()
    }
}
