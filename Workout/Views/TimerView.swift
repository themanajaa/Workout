//
//  TimerView.swift
//  Workout
//
//  Created by abdelmlek sami on 03/03/2022.
//

import SwiftUI

struct TimerView: View {
    
    var cats = ["Bike", "Run", "Walk"]
    @State private var selectedCat = "Bike"
    
    var body: some View {
        VStack{
            NavigationView{
                List{
                    Picker("", selection: $selectedCat){
                        ForEach(cats, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
