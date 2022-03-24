//
//  MainView.swift
//  Workout
//
//  Created by abdelmlek sami on 03/03/2022.
//

import SwiftUI
import MapKit

struct MainView: View {
    
    @StateObject private var viewModel = MainViewModel()
    @EnvironmentObject var data: ProfileViewModel
    
    var body: some View {
        TabView{
            TimerView()
                .tabItem{
                    Label("Timer", systemImage: "timer")
                }
                .onAppear{
                    viewModel.checkIfLocationServicesIsEnabled()
                }
            
            
            ListWorkout()
                .tabItem{
                    Label("Workout", systemImage: "list.dash")
                }
        
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.fill")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ProfileViewModel())
    }
}


