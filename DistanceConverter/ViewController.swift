//
//  ViewController.swift
//  DistanceConverter
//
//  Created by Jason Lee on 8/20/19.
//  Copyright © 2019 Jason Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textDist: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertDist(_ sender: UIButton) {
        
        guard let tempString = textDist.text else { return }
        
        if let distanceKm = Double(tempString) {
            let km = distanceKm * 1.60934
            let resultText = "KM: \(km)"
            resultLabel.text = resultText
        }
    }
}

