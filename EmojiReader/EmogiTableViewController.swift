//
//  EmogiTableViewController.swift
//  EmojiReader
//
//  Created by Eugene Kiselev on 13.07.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import UIKit

class EmogiTableViewController: UITableViewController {
    
    var objects = [
        Emoji(emoji: "🐔", name: "Сhicken", description: "Сhicken is cool", isFavorite: false),
        Emoji(emoji: "🐧", name: "Bird", description: "Bird is cool", isFavorite: false),
        Emoji(emoji: "🐦", name: "Little Bird", description: "Little Bird is cool", isFavorite: false),
        Emoji(emoji: "🐤", name: "Yellow Bird", description: "Yellow Bird is cool", isFavorite: false),
        Emoji(emoji: "🐣", name: "Junior Сhicken", description: "Junior Сhicken is cool", isFavorite: false),
        Emoji(emoji: "🐥", name: "Middle Сhicken", description: "Middle Сhicken is cool", isFavorite: false),
        Emoji(emoji: "🦆", name: "Duck", description: "Duck is cool", isFavorite: false)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Emoji Reader"
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        self.navigationItem.leftBarButtonItem?.tintColor = .black
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath) as! EmojiTableViewCell
        let object = objects[indexPath.row]
        
        cell.set(object: object)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let movedEmoji = objects.remove(at: sourceIndexPath.row)
        objects.insert(movedEmoji, at: destinationIndexPath.row)
        tableView.reloadData()
    }
}
