//
//  ContentView.swift
//  lesson10
//
//  Created by Vũ Đăng Khoa on 18/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            
            Text("Button test").padding()
            
            HStack{
                Spacer()
                Button(action: {
                    print("Hello World")
                }, label: {
                    Text("Press me")
                })
                Spacer()

                Button(action: {
                    print("Goodbye World")
                }, label: {
                    HStack{
                        Image(systemName: "play.fill")
                        Text("Press me too")
                    }
                })
                Spacer()

            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
