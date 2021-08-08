//
//  ContentView.swift
//  WelcomePage
//
//  Created by Shinya Ema on 2021/08/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("BG1"), Color("BG2")]), startPoint: .top , endPoint: .bottom).ignoresSafeArea()
            
            GeometryReader(content: { geometry in
                
                let size = geometry.size
                
                Circle()
                    .fill(Color.purple)
                    .padding(50)
                    .blur(radius: 120)
                    .offset(x: -size.width / 2, y: -size.height / 5)
                
                Circle()
                    .fill(Color.blue)
                    .padding(50)
                    .blur(radius: 120)
                    .offset(x: size.width / 2, y: -size.height / 2)
                
                Circle()
                    .fill(Color.blue)
                    .padding(50)
                    .blur(radius: 120)
                    .offset(x: size.width / 3, y: size.height / 3)
                
                Circle()
                    .fill(Color.purple)
                    .padding(50)
                    .blur(radius: 120)
                    .offset(x: -size.width / 1.5, y: size.height / 2)
                
            })
            
            
            VStack{
                
                Spacer()
                
                ZStack {
                    
                    Circle()
                        .fill(Color.purple)
                        .padding(90)
                        .blur(radius: 60)
                    
                    CardView()
                }
                
                
                Spacer()
                
                Text("Know Everything \n about the weather.")
                    .font(.system(size: 32, weight: .bold, design: .default))
                
                Text("Start now and learn more about \n local weather instantly.")
                    .fontWeight(.semibold)
                    .kerning(1.2)
                    .padding(.top)
                
                Button(action: {
                    
                }, label: {
                    Text("Get started")
                        .font(.title3.bold())
                        .padding(.vertical, 24)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 24).foregroundColor(.blue)
                            
                        )
                })
                .padding(.horizontal, 60)
                .padding(.vertical, 30)
                
                Button(action: {}, label: {
                    Text("Already have an account?")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                }).padding(.bottom, 10)
                
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    
    let width = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 18)
                .opacity(0.1)
                .background(
                    Color.white.opacity(0.1).blur(radius: 10)
                )
                .shadow(color: .black.opacity(0.1), radius: 5, x: 5, y: 5)
                .shadow(color: .black.opacity(0.1), radius: 5, x: -5, y: -5)
            
            
            VStack {
                Image(systemName: "sun.max").font(.system(size: 72))
                
                Text("24").font(.system(size: 72,weight: .bold))
                    .padding(.top,6)
                    .overlay(
                        Text("°C")
                            .font(.title2)
                            .foregroundColor(.white.opacity(0.7))
                            .offset(x: 30, y: 15)
                        ,alignment: .topTrailing
                    )
                    .offset(x: -6, y: 0)
                
                Text("Tokyo, Japan")
                    .font(.title3)
                    .foregroundColor(.white.opacity(0.4))
               
            }
        }
        .frame(width: width / 1.5, height: 270, alignment: .center)
    }
}
