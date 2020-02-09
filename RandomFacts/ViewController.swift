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
    
    @IBOutlet weak var randomFactButton: UIButton!

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
        let color = randomColorProvider.get()
        view.backgroundColor = color
        randomFactButton.setTitleColor(color, for: .normal)
    }
}

