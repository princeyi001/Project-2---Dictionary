//
//  ViewController.swift
//  Project 2 - Dictionary
//
//  Created by Dong Hun Yi on 9/6/17.
//  Copyright © 2017 PrinceYiCoding. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableview1: UITableView!

    var emojiFull : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview1.dataSource = self
        tableview1.delegate = self
        emojiFull = makeEmojiArray()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiFull.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let name = emojiFull[indexPath.row]
        cell.textLabel?.text = "\(name.birthYear)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emojinew = emojiFull[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emojinew)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emojiPass = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() -> [Emoji] {
        
        let emoji1 = Emoji()
        emoji1.appearance = "😃"
        emoji1.birthYear = 2010
        emoji1.definition = "A smiley face with sunglasses"
        emoji1.category = "Smiley"
        
        let emoji2 = Emoji()
        emoji2.appearance = "😇"
        emoji2.birthYear = 2010
        emoji2.definition = "A smiley face with halo"
        emoji2.category = "Smiley"
        
        let emoji3 = Emoji()
        emoji3.appearance = "😈"
        emoji3.birthYear = 2010
        emoji3.definition = "Devil Face"
        emoji3.category = "Hell"
        
        let emoji4 = Emoji()
        emoji4.appearance = "🤡"
        emoji4.birthYear = 2010
        emoji4.definition = "A clown face"
        emoji4.category = "Clown"
        
        return [emoji1, emoji2, emoji3, emoji4]
        
    }
}

