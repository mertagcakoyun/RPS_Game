//
//  ViewController.swift
//  RPS
//
//  Created by Mert Agcakoyun on 25.11.2018.
//  Copyright © 2018 Mert Agcakoyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startClicked(_ sender: Any) {
        performSegue(withIdentifier: "StartClicked", sender: nil)
    }
    
    
}

