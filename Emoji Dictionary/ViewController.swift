//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Johan Scholtz on 2017/03/06.
//  Copyright © 2017 Johan Scholtz. All rights reserved.
// Testies2

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var MainTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        MainTableView.dataSource = self
        MainTableView.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
       let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.catagory = "one"
        emoji1.birthYear = 2010
        emoji1.definition = "cool dud"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😍"
        emoji2.catagory = "two"
        emoji2.birthYear = 2013
        emoji2.definition = "love dud"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😵"
        emoji3.catagory = "three"
        emoji3.birthYear = 2014
        emoji3.definition = "drunk dud"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😡"
        emoji4.catagory = "four"
        emoji4.birthYear = 2015
        emoji4.definition = "mad dud"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🤡"
        emoji5.catagory = "five"
        emoji5.birthYear = 2016
        emoji5.definition = "clown dud"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😱"
        emoji6.catagory = "six"
        emoji6.birthYear = 2017
        emoji6.definition = "blue dud"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
    }



}

