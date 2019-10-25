//
//  PlayViewController.swift
//  dice
//
//  Created by IOSLevel-01 on 25/10/19.
//  Copyright © 2019 sjbit. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    @IBAction func roll(_ sender: UIButton) {
        let numberOne = arc4random_uniform(6) + 1
        
        label.text = String(numberOne)
        
        image1.image = UIImage(named: "Dice\(numberOne)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image1: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
     
    }
    */

}
