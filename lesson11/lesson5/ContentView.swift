//
//  ContentView.swift
//  lesson5
//
//  Created by Vũ Đăng Khoa on 18/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {

        ZStack(){
            
            Image("background") .edgesIgnoringSafeArea(.all)
                
            
            VStack(){
                Spacer()
                Image("logo").padding(.top)
                
                Spacer()
                
                HStack(){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                HStack {
                    Spacer()
                    Button(action: {
                        
                        //change cards
                        let playerRand = Int.random(in: 2...14)
                        let cpuRand = Int.random(in: 2...14)
                        self.playerCard = "card" + String(playerRand)
                        self.cpuCard = "card" + String(cpuRand)
                        
                        //computing score
                        if(playerRand > cpuRand){
                            self.playerScore += 1
                        }
                        else if(playerRand < cpuRand){
                            self.cpuScore += 1
                        }
                        
                    }, label: {
                        Image("dealbutton").renderingMode(.original)

                    })
                    Spacer()
                    
                    Button(action: {
                        self.playerCard = "back"
                        self.cpuCard = "back"
                        self.playerScore = 0
                        self.cpuScore = 0
                    }, label: {
                        
                        HStack {
                            Image(systemName: "repeat").foregroundColor(Color.white)
                            Text("Restart").font(.headline).foregroundColor(.white)
                        }
                        .padding(5.0)
                        .background(Color.red)
                        .cornerRadius(10)
                        .opacity(0.8)
                    })
                    
                    Spacer()
                    
                }
                    
                Spacer()
                
                HStack(spacing: 100.0){
                    VStack(){
                        Text("Player")
                            .font(Font.headline)
                            .foregroundColor(Color.white)
                        Text(String(playerScore))
                            .font(Font.largeTitle)
                            .padding(.vertical, 10)
                        .foregroundColor(Color.white)
                    }
                    VStack(){
                        Text("CPU")
                            .font(Font.headline)
                            .foregroundColor(Color.white)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .padding(.vertical, 10)
                        .foregroundColor(Color.white)
                    }
 
                }.padding()
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
