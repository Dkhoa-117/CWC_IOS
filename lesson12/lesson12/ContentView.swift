//
//  ContentView.swift
//  lesson12
//
//  Created by Vũ Đăng Khoa on 18/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    @State var flag = 1
    var body: some View {
        VStack {
            Text(String(number))
            
            Button(action: {
                if (self.flag == 1) {
                    self.Increase()
                }
                else{
                    self.Decrease()
                }
                if (self.number > 50) {
                    self.flag = 0
                }
                else if (self.number < 0) {
                    self.flag = 1
                }
                
            }, label: {
                HStack() {
                    Image(systemName: "gamecontroller")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Hit me!")
                        .font(.headline)
                }.frame(width: 150, height: 30)
            })
        }
    }
    
    func Increase() {
        let rand = Int.random(in: 1...10)

        number += rand
    }
    
    func Decrease(){
        let rand = Int.random(in: 1...10)
        
        number -= rand
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
