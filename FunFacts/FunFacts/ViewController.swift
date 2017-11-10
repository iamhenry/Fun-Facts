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
    
    let factProvider = FactProvider()
    
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
    }
    
}

