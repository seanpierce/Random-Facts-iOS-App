//
//  ViewController.swift
//  RandomFacts
//
//  Created by Sean Pierce on 2/8/20.
//  Copyright © 2020 Sean Pierce. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let randomFactProvider = RandomFactProvider()
    let randomColorProvider = RandomColorProvider()

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
        randomFactLabel.text = randomFactProvider.get()
    }
    
    func updateColor() {
        view.backgroundColor = randomColorProvider.get()
    }
}

