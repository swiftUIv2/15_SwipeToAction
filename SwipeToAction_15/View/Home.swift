//
//  Home.swift
//  SwipeToAction_15
//
//  Created by emm on 26/01/2021.
//

import SwiftUI

struct Home: View {
    
    
    @State var size = "Medium"
    @State var currentTab = "All"
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "line.horizontal.3.decrease")
                        .font(.title)
                        .foregroundColor(.black)
                }
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                }
                .overlay(
                
                    // Cart Count...
                    Text("1")
                        .font(.caption)
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .frame(width: 20, height: 20)
                        .background(Color("tab"))
                        .clipShape(Circle())
                        .offset(x: 15, y: -22 )
                    
                )
            }
            .padding(.horizontal)
            .padding(.top)
            .padding(.bottom, 10)
            
            ScrollView {
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 8) {
                            
                            Text("Furniture in \nUnique Style")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                            
                            Text("We have wide range of furnitures")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .fontWeight(.bold)
                        }
                        
                        Spacer(minLength: 15)
                        
                        // Menu Button...
                        Menu(content: {
                            
                            Button(action: {size = "Small"}){
                                Text("Small")
                            }
                            
                            Button(action: {size = "Medium"}){
                                Text("Medium")
                            }
                            
                            Button(action: {size = "Large"}){
                                Text("Large")
                            }
                            
                        }) {
                            
                            Label(title: {
                                Text(size)
                                    .foregroundColor(.white)
                            }){
                                Image(systemName: "slider.vertical.3")
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black)
                            .clipShape(Capsule())
                        }
                    }
                    .padding()
                    
                    HStack(spacing: 0){
                        ForEach(tabs, id:\.self){tab in
                            
                            Button(action: {currentTab = tab}){
                                Text(tab)
                                    .fontWeight(.bold)
                                    .foregroundColor(currentTab == tab ? .black : .gray)
                            }
                            
                            if tab != tabs.last {
                                Spacer(minLength: 0)
                            }
                        }
                        
                    }
                    .padding()
                }
            }
        }
    }
}

var tabs = ["Tables", "Lamps", "Chairs", "All"]
