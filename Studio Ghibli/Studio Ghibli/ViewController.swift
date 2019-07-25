//
//  ViewController.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func filmsTapped(_ sender: Any) {
        performSegue(withIdentifier: "openFilms", sender: nil)
    }
    
    @IBAction func charactersTapped(_ sender: Any) {
        performSegue(withIdentifier: "openCharacters", sender: nil)
    }

}

