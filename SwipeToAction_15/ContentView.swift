//
//  ContentView.swift
//  SwipeToAction_15
//
//  Created by emm on 26/01/2021.
//

import SwiftUI

struct ContentView: View {
    
    // hiding tabBar...
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        TabBar()
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
