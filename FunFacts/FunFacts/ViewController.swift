//
//  ViewController.swift
//  FunFacts
//
//  Created by Henry Moran on 11/8/17.
//  Copyright © 2017 Henry Moran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func showFact() {
        funFactLabel.text = factProvider.randomFact()
        
        let randomColor = colorProvider.randomColor()
        
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }
    
}

