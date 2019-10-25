//
//  OneViewController.swift
//  dice
//
//  Created by IOSLevel-01 on 24/10/19.
//  Copyright © 2019 sjbit. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {
     var num1 = 0
    var maxattempts = 0
    
    @IBAction func OneRoll(_ sender: UIButton) {
        
        maxattempts += 1
        if (maxattempts > 20)
        {
            let alert = UIAlertController(title
                : "Score", message: "The score is \(num1)/20", preferredStyle: .alert)
            
            let okaction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            
            alert.addAction(okaction)
            
            self.present(alert, animated: true, completion: nil)
        }
        else{
            var valid = 0
            
            let array:[String] = ["1","2","3","4","5","6"]
       
            for i in array{
                if(num.text == i){
                    valid = 1
                }
            }
            if(valid == 0)
            {
                let alert = UIAlertController(title: "Error", message: "Enter number from 1 to 6", preferredStyle: .alert)
                
                let okaction = UIAlertAction(title: "OK", style: .default, handler: nil)
              
                
                self.num.text = ""
                
                alert.addAction(okaction)
           
                self.present(alert, animated: true, completion: nil)
            }
            else{
            let numberOne = arc4random_uniform(6) + 1
                 label.text = String(numberOne)
            ImageView1.image = UIImage(named: "Dice\(numberOne)")
        if ("\(numberOne)" == num.text) {
            winnn?.image = UIImage(named: "win")
            num1 = num1 + 1
            score.text = "Score: \(num1)"
            self.num.text = ""
        }
        else{
            winnn?.image = UIImage(named: "Tryagain.2")
            score.text = "Score: \(num1)"
            self.num.text = ""
        }
        }
    }
    }
    @IBOutlet weak var num: UITextField!
    @IBAction func refresh(_ sender: UIButton) {
       self.num.text = ""
        self.label.text = ""
        self.ImageView1.image = UIImage(named: "Dice3")
        self.winnn?.image = UIImage(named: "")
        self.score.text = ""
        maxattempts = 0
        
       
    }
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var winnn: UIImageView?
   // @IBOutlet weak var Win: UILabel!
    @IBOutlet weak var ImageView1: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
