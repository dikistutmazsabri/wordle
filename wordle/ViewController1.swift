//
//  ViewController1.swift
//  wordle
//
//  Created by Burak Polat on 4.03.2022.
//

import UIKit

class ViewController1: UIViewController {

    @IBAction func startButton(_ sender: Any) {
        
        performSegue(withIdentifier: "goto", sender: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}
