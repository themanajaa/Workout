//
//  ListWorkout.swift
//  Workout
//
//  Created by bernhard william on 17/03/2022.
//

import SwiftUI
import MapKit

struct ListWorkout: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    @State private var action: Int? = 0

        let annotations = [
            City(name: "London", coordinate: CLLocationCoordinate2D(latitude: 47.639674, longitude: 6.863849)),
            City(name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508))
        ]

    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: WorkoutView(), tag: 1, selection: $action) {
                                    EmptyView()
                                }
                                
                Text("Show")
                    .onTapGesture {
                        //perform some tasks if needed before opening Destination view
                        self.action = 1
                    }
                VStack{
                    Text("3 Mars 2022")
                        .foregroundColor(Color.black)
                        .padding()
                        
                    HStack(spacing: 10){
                        Map(coordinateRegion: $region, annotationItems: annotations) {
                                    MapPin(coordinate: $0.coordinate)
                                }
                                .frame(width: 310, height: 300)
                                .padding(5)
                                .cornerRadius(10)
                        
                            
                        
                        Button{
                            
                        } label : {
                            Image(systemName: "magnifyingglass.circle.fill")
                                .foregroundColor(.gray)
                                .frame(width: 40, height: 40)
                            
                        }
                        .onTapGesture {
                            //perform some tasks if needed before opening Destination view
                            self.action = 1
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
    
}

struct ListWorkout_Previews: PreviewProvider {
    static var previews: some View {
        ListWorkout()
    }
}
