//
//  ContentView.swift
//  lesson4
//
//  Created by Vũ Đăng Khoa on 17/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(){
            
            //Zstack pic_Toronto
            ZStack(){
                Image("toront")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                //Text
                VStack(alignment: .center){
                    Text("CN Tower")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("Toronto")
                        .padding([.leading, .bottom, .trailing])
                        .font(Font.body)
                }
                .background(Color.black)
                .opacity(0.8)
                .foregroundColor(Color.white)
            }.padding()
            
            //ZStack pic_london
            ZStack(){
                Image("london")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                //Text
                VStack(alignment: .center){
                    Text("Big Ben")
                        .font(Font.largeTitle)
                        .padding([.top,.leading,.trailing])
                    Text("London")
                        .font(Font.body)
                        .padding([.bottom,.trailing,.leading])
                }
                .background(Color.black)
                .opacity(0.8)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                
            }.padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
