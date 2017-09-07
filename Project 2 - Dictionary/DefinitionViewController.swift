//
//  DefinitionViewController.swift
//  Project 2 - Dictionary
//
//  Created by Dong Hun Yi on 9/6/17.
//  Copyright © 2017 PrinceYiCoding. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "NO EMOJI"
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emojiLabel.text = emoji
        
        if emoji == "💩" {
            definition.text = "A cute turd"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
