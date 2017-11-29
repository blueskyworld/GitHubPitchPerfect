//
//  ViewController.swift
//  Storyboards1
//
//  Created by Ken Kremer on 11/13/17.
//  Copyright © 2017 Ken Kremer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.title(for: .normal) == "X" {
            sender.setTitle("A very long title for this button", for: .normal)
        } else {
            sender.setTitle("X", for: .normal)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

