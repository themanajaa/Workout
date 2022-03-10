//
//  ProfileViewModel.swift
//  Workout
//
//  Created by bernhard william on 10/03/2022.
//

import SwiftUI

class ProfileViewModel: ObservableObject{
    
    @Published var profiles: [Profile] = []
    
    init(){
        getProfiles()
    }
    
    func getProfiles(){
        profiles.append(contentsOf: Profile.testData)
    }
    func addItem(firstname: String, lastname: String, sex: Sex){
        let newProfile = Profile(firstname: firstname, lastname: lastname, sex: sex)
        profiles.append(newProfile)
    }
    func deleteItem(indexSet: IndexSet){
        profiles.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        profiles.move(fromOffsets: from, toOffset: to)
    }
    
    func updateItem(profile: Profile){
        let index = profiles.firstIndex(where: { existingProfile in
            return profile.id == existingProfile.id
        })
    }
}
