//
//  ContentView.swift
//  Lesson7Challenge
//
//  Created by Serezha on 04.05.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            
            TabView {
                ForEach(0..<50) { index in
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1)))
                            
                        ZStack {
                            Circle()
                                .stroke(lineWidth: 15)
                                .frame(width: 310)
                            
                            Text(String(index+1))
                                .font(.custom("aerial", size: 200))
                                .foregroundColor(Color(red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1)))
                        }
                            
                    }.frame(width: geo.size.width - 40, height: geo.size.height - 90)
                        .cornerRadius(20)
                        .shadow(radius: 30)
                }
                
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
