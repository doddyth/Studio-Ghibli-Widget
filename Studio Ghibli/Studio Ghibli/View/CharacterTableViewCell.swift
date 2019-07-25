//
//  CharacterTableViewCell.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    func set(character: Character) {
        nameLabel.text = character.name
        genderLabel.text = "Gender: \(character.gender)"
        ageLabel.text = "Age: \(character.age)"
    }

}
