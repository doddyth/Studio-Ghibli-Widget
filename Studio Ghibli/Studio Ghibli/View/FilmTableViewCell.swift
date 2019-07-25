//
//  FilmTableViewCell.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import UIKit

class FilmTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var producerLabel: UILabel!
    
    func set(film: Film) {
        titleLabel.text = film.title
        directorLabel.text = "Director: \(film.director)"
        producerLabel.text = "Producer: \(film.producer)"
    }
}
