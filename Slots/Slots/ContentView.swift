//
//  ContentView.swift
//  Slots
//
//  Created by Vũ Đăng Khoa on 20/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var playerScore: Int = 1000
    var picDic = ["star","cherry","apple"]
    @State var firstSplot: String = "star"
    @State var secondSplot: String = "star"
    @State var thỉrdSplot: String = "star"
    @State var isLost = false
    var body: some View {
        
        VStack {
            Spacer()
            Text("Score")
                .font(.system(size: 30))
                .padding([.top, .leading, .trailing])
                .font(.headline)
            Text(String(playerScore))
                .bold()
                .font(.system(size: 50))
                .foregroundColor(.red)
            Spacer()
            HStack {
                Image(firstSplot).resizable().aspectRatio(contentMode: .fit)
                Image(secondSplot).resizable().aspectRatio(contentMode: .fit)
                Image(thỉrdSplot).resizable().aspectRatio(contentMode: .fit)
            }
            Spacer()
            Button(action: {
                if self.playerScore == 0 {
                    self.isLost.toggle()
                    return
                }
                let randomPicSplot1 = Int.random(in: 0...2)
                let randomPicSplot2 = Int.random(in: 0...2)
                let randomPicSplot3 = Int.random(in: 0...2)
                
                self.firstSplot = self.picDic[randomPicSplot1]
                self.secondSplot = self.picDic[randomPicSplot2]
                self.thỉrdSplot = self.picDic[randomPicSplot3]
                
                if(randomPicSplot3 == randomPicSplot1 && randomPicSplot1 == randomPicSplot2) {
                    self.playerScore += 150
                }
                else {
                    self.playerScore -= 50
                }
                if self.playerScore == 0 {
                    self.isLost.toggle()

                }
            }, label: {
                    HStack {
                        Image(systemName: "play.circle").resizable().frame(width: 40, height: 40)
                        Text("Let's play!")
                    }.alert(isPresented: self.$isLost) {
                            Alert(
                                title: Text("YOU LOST !!!!"),
                                message: Text("Play again ?"),
                                primaryButton: .cancel(Text("Yes, 'cause I'm stupid"), action: {
                                    self.Start()
                                }),
                                secondaryButton: .default(Text("No, I'm a Pussy!"))
                        )
                    }
                })
            Spacer()
        }
        
    }

    
    func Start() {
        self.firstSplot = "star"
        self.secondSplot = "star"
        self.thỉrdSplot = "star"
        self.playerScore = 1000
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
