//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Eugene Kiselev on 14.07.2020.
//  Copyright © 2020 Eugene Kiselev. All rights reserved.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {

    @IBOutlet weak var emojiTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func textChange(_ sender: UITextField) {
        
    }
}
