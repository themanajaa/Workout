//
//  TimerView.swift
//  Workout
//
//  Created by abdelmlek sami on 03/03/2022.
//

import SwiftUI


struct TimerView: View {
    //@StateObject timer = TimerViewModel
    
    @State var countdownTimer = 0
        @State var timerRunning = false
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var cats = ["🚲", "🏃🏽‍♂️", "🚶🏽‍♂️"]
    @State private var selectedCat = "🚲"
    @State var go: Bool = false
    @State var pause:Bool = false
    
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
            
            Text("\(countdownTimer)")
                .font(.system(size: 50, weight: .bold))
                .padding()
                .onReceive(timer) { _ in
                    if countdownTimer >= 0 && timerRunning {
                        countdownTimer += 1
                    } else {
                        timerRunning = false
                    }
                }
            
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
            
            
            if(!go && !pause){
                Button{
                    go.toggle()
                    timerRunning = true
                } label : {
                    HStack{
                        Image(systemName: "play.fill")
                            .foregroundColor(.white)
                        Text("Go")
                            .foregroundColor(.white)
                    }
                    .padding()
                }
                .background(Capsule().frame(minWidth: 130, minHeight: 30).foregroundColor(.orange))
                .padding(1)
            }else if(go && !pause){
                Button{
                    timerRunning = false
                    pause.toggle()
                } label : {
                    HStack{
                        Image(systemName: "pause.fill")
                            .foregroundColor(.white)
                        Text("Pause")
                            .foregroundColor(.white)
                    }
                    .padding()
                }
                .background(Capsule().frame(minWidth: 130, minHeight: 30).foregroundColor(.red))
                .padding(1)
            }
            
            if(!pause){
                
            }else if(pause){
                HStack{
                    Spacer()
                    Spacer()
                    
                    Button{
                        countdownTimer = 0
                        timerRunning = false
                        pause.toggle()
                        go.toggle()
                    } label : {
                        HStack{
                            Image(systemName: "stop.fill")
                                .foregroundColor(.white)
                            Text("Stop")
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                    .background(Capsule().frame(minWidth: 130, minHeight: 30).foregroundColor(.red))
                    .padding(1)
                    
                    Spacer()
                    
                    Button{
                        pause.toggle()
                        timerRunning = true
                    } label : {
                        HStack{
                            Image(systemName: "arrow.counterclockwise")
                                .foregroundColor(.white)
                            Text("Restart")
                                .foregroundColor(.white)
                        }
                        .padding()
                    }
                    .background(Capsule().frame(minWidth: 130, minHeight: 30).foregroundColor(.orange))
                    .padding(1)
                    
                    Spacer()
                    Spacer()
                }
            }
            
            
            
            
        }
        .onAppear {
            // ici appeler le msg perm location
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
