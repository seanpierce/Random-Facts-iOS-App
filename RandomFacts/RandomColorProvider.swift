//
//  RandomColorProvider.swift
//  RandomFacts
//
//  Created by Sean Pierce on 2/9/20.
//  Copyright © 2020 Sean Pierce. All rights reserved.
//

import UIKit

struct RandomColorProvider {
    func get() -> UIColor {
        return colors[Int.random(in: 0 ... colors.count - 1)]
    }
    
    private let colors: Array<UIColor> = [
        UIColor(red: 90/255, green: 281/255, blue: 181/255, alpha: 1),  // teal
        UIColor(red: 222/255, green: 171/255, blue: 66/255, alpha: 1),  // yellow
        UIColor(red: 253/255, green: 86/255, blue: 94/255, alpha: 1),   // red
        UIColor(red: 239/255, green: 130/255, blue: 100/255, alpha: 1), // dark
        UIColor(red: 85/255, green: 176/255, blue: 112/255, alpha: 1)   // green
    ]
}
