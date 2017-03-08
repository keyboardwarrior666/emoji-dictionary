//
//  DefViewController.swift
//  Emoji Dictionary
//
//  Created by Johan Scholtz on 2017/03/07.
//  Copyright © 2017 Johan Scholtz. All rights reserved.
//

import UIKit

class DefViewController: UIViewController {
    
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var catLabel: UILabel!
    @IBOutlet weak var defLavel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()
        
       emojiLabel.text = emoji.stringEmoji
        yearLabel.text = "birthyar: \(emoji.birthYear)"
        catLabel.text = "Catagory : \(emoji.catagory)"
        defLavel.text = emoji.definition
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    


}
