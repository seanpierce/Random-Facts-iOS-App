//
//  ViewController.swift
//  RandomFacts
//
//  Created by Sean Pierce on 2/8/20.
//  Copyright © 2020 Sean Pierce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let facts: Array<String> = [
        "Ostriches can run faster than horses",
        "Ants stretch when they wake up in the morning",
        "Olympic gold medals are actually made mostly of silver",
        "You are born with 300 bones; by the time you are an adult you will have 206",
        "It takes about 8 minutes for the light from the Sun to reach Earth",
        "Some bamboo plants can grow almost a meter in just one day",
        "The state of Florida is bigger than England",
        "Some penguins can leap 2-3 meters out of the water",
        "On average, it takes 66 days to form a new habit",
        "Mammoths still walked the Earth when the Great Pyramid was being built"
    ]
    
    let colors: Array<UIColor> = [
        UIColor(red: 90/255, green: 281/255, blue: 181/255, alpha: 1),  // teal
        UIColor(red: 222/255, green: 171/255, blue: 66/255, alpha: 1),  // yellow
        UIColor(red: 253/255, green: 86/255, blue: 94/255, alpha: 1),   // red
        UIColor(red: 239/255, green: 130/255, blue: 100/255, alpha: 1), // dark
        UIColor(red: 85/255, green: 176/255, blue: 112/255, alpha: 1)   // green
    ]

    @IBOutlet weak var randomFactLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomFact()
    }

    @IBAction func showAnotherFunFact() {
        getRandomFact()
        updateColor()
    }
    
    func getRandomFact() {
        let randomIndex: Int = Int.random(in: 0 ... facts.count - 1)
        randomFactLabel.text = facts[randomIndex]
    }
    
    func updateColor() {
        let randomIndex: Int = Int.random(in: 0 ... colors.count - 1)
        view.backgroundColor = colors[randomIndex]
    }
}

