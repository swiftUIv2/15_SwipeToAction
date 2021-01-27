//
//  Item.swift
//  SwipeToAction_15
//
//  Created by emm on 26/01/2021.
//

import SwiftUI

// Model and Model Data...

struct Item: Identifiable {
    var id = UUID().uuidString
    var title: String
    var price: String
    var subTitle: String
    var image: String
    var offset: CGFloat = 0
}

