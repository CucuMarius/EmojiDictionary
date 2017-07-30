//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Marius Adrian Cucu on 30/07/2017.
//  Copyright © 2017 Marius Adrian Cucu. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😃"{
        definitionLabel.text = "Fericire!"
        }
        else if emoji == "😂"
        {
            definitionLabel.text = "Mor de ras!"
        }
        if emoji == "😇"{
            definitionLabel.text = "Inger!"
        }
        if emoji == "😎"
        {
            definitionLabel.text = "Boss!"
        }
        if emoji == "😜"{
            definitionLabel.text = "Smecher!"
        }
        if emoji == "😍"
        {
            definitionLabel.text = "Indragostit!"
        }
        if emoji == "😡"{
            definitionLabel.text = "Nervos!"
        }
        if emoji == "😈"
        {
            definitionLabel.text = "Dracusor!"
        }
        if emoji == "😥"{
            definitionLabel.text = "Tristete!"
        }
        if emoji == "💩"
        {
            definitionLabel.text = "Cacat!"
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
