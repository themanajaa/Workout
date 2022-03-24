//
//  ProfileRowView.swift
//  Workout
//
//  Created by bernhard william on 10/03/2022.
//

import SwiftUI

struct ProfileRowView: View {
    
    let profile: Profile
    
    var body: some View {
        HStack{
            
            Text(profile.firstname)
            Text(profile.lastname)
            Text(profile.sex.rawValue)
            Spacer()
            
        }
        .font(.title2)
        .padding(.vertical, 10)
        .padding(.horizontal, 5)
    }
}

struct ProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRowView(profile: Profile.testData[0])
            .previewLayout(.sizeThatFits)
    }
}
