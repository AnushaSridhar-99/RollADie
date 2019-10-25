//
//  ViewController.swift
//  dice
//
//  Created by IOS Level 01 on 24/10/19.
//  Copyright © 2019 sjbit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonTapped(_ sender: UIButton)
    {
        let numberOne = arc4random_uniform(6) + 1
        
        let numberTwo = arc4random_uniform(6) + 1
        
        label.text = "The sum is: \(numberOne + numberTwo)"
        
        leftImageView.image = UIImage(named: "Dice\(numberOne)")
        
        rightImageView.image = UIImage(named: "Dice\(numberTwo)")
    }
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

