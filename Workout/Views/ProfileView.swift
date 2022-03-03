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
    
    var body: some View {
        
        VStack{
            Text("Profile")
            TextField("First Name", text: $firstname)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            TextField("Last Name", text: $lastname)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            Picker("Sexe", selection: $sex){
                ForEach(Sex.allCases, id: \.self){
                    Text($0.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            Text("Date of Birth")
                
            
            Button{
                
            } label:{
                Text("Save")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding(14)
        .navigationTitle("🤯 Add an Expense")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
