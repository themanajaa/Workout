//
//  TimerView.swift
//  Workout
//
//  Created by abdelmlek sami on 03/03/2022.
//

import SwiftUI

struct TimerView: View {
    
    var cats = ["🚲", "🏃🏽‍♂️", "🚶🏽‍♂️"]
    @State private var selectedCat = "🚲"
    
    var body: some View {
        VStack{
            if(selectedCat == "🚲"){
                Text("Bike")
            }else if(selectedCat == "🏃🏽‍♂️"){
                Text("Run")
            }else{
                Text("Walk")
            }
            Spacer()
            
            Text("00:00:00")
                .font(.system(size: 50, weight: .bold))
                .padding()
            
            Text("0 m")
                .font(.system(size: 50, weight: .bold))
            
            
            Spacer()
            
            Picker("", selection: $selectedCat){
                ForEach(cats, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            
            Button(action:{}) {
                HStack{
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                    Text("Go")
                        .foregroundColor(.white)
                }
                .padding()
            }
            .background(Capsule().frame(minWidth: 130, minHeight: 30).foregroundColor(.orange))
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
