//
//  MainView.swift
//  Workout
//
//  Created by abdelmlek sami on 03/03/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            TimerView()
                .tabItem{
                    Label("Timer", systemImage: "timer")
                }
            
            WorkoutView()
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
    }
}
