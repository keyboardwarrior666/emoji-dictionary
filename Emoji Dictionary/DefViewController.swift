//
//  DefViewController.swift
//  Emoji Dictionary
//
//  Created by Johan Scholtz on 2017/03/07.
//  Copyright © 2017 Johan Scholtz. All rights reserved.
//

import UIKit

class DefViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var defLavel: UILabel!
    var emoji = "No emoji"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😡" {
            defLavel.text = "angry"
        }
        if emoji == "😵" {
            defLavel.text = "drunk"
        }
        if emoji == "😍" {
            defLavel.text = "love"
        }

        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
