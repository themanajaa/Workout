//
//  ProfileView.swift
//  Workout
//
//  Created by bernhard william on 03/03/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var firstname: String = ""
    @State var lastname: String = ""
    
    @State var sex: Sex = .female
    
    @State private var date = Date()
    
    var body: some View {
        
        VStack{
            Text("Profile")
                .font(.system(size: 40))
                .padding(0)
            
            VStack(spacing: 0){
                TextField("First Name", text: $firstname)
                    .padding(.horizontal)
                    .frame(height: 55)
                    
                TextField("Last Name", text: $lastname)
                    .padding(.horizontal)
                    .frame(height: 55)
                Picker("Sexe", selection: $sex){
                    ForEach(Sex.allCases, id: \.self){
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(10)
                HStack{
                    Spacer()
                    DatePicker(
                            "Date of Birth",
                            selection: $date,
                            displayedComponents: [.date])
                }
                Button{
                    
                } label:{
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .cornerRadius(10)
                        .padding(.horizontal)
                        
                }
            }
            .background(Color(.systemGray4))
            .cornerRadius(10)
            .padding(10)
            
            Spacer()
        }
        .padding(14)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
