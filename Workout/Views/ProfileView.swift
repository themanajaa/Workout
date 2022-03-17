//
//  ProfileView.swift
//  Workout
//
//  Created by bernhard william on 03/03/2022.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var data: ProfileViewModel
    @Environment(\.presentationMode) var presentationMode
    
    @State var firstname: String = ""
    @State var lastname: String = ""
    
    @State var sex: Sex = .female
    
    @State private var date = Date()
    
    var body: some View {
        
        VStack{
            Text("Profile")
                .padding(0)
                .frame(alignment: .leading)
            
            VStack(spacing: 0){
                TextField("First Name", text: $firstname)
                    .padding(.horizontal)
                    .frame(height: 55)
                
                Divider()
                    .padding(.horizontal, 9)
                    
                TextField("Last Name", text: $lastname)
                    .padding(.horizontal)
                    .frame(height: 55)
                
                Divider()
                    .padding(.horizontal, 9)
                
                Picker("Sexe", selection: $sex){
                    ForEach(Sex.allCases, id: \.self){
                        Text($0.rawValue)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(10)
                
                Divider()
                    .padding(.horizontal, 9)
                
                HStack{
                    Spacer()
                    DatePicker(
                            "Date of Birth",
                            selection: $date,
                            displayedComponents: [.date])
                        .padding(5)
                }
                
                Divider()
                    .padding(.horizontal, 9)
                Button{
                    data.addItem(firstname: firstname, lastname: lastname, sex: sex)
                    presentationMode.wrappedValue.dismiss()
                } label:{
                    Text("Save")
                        .foregroundColor(.blue)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .cornerRadius(10)
                        .padding(.horizontal)
                        
                }
            }
            .background(Color.white)
            .cornerRadius(10)
            .padding(10)
            
            Spacer()
            
            List {
                ForEach(data.profiles){ profile in
                    ProfileRowView(profile: profile)
                        .onTapGesture{
                            data.updateItem(profile: profile)
                        }
                }
                .onDelete(perform: data.deleteItem)
                .onMove(perform: data.moveItem)
            }
            .cornerRadius(10)
            .padding(10)
        }
        .padding(14)
        .background(Color(.systemGray4))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(ProfileViewModel())
    }
}
