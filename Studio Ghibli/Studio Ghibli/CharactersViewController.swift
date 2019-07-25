//
//  CharactersViewController.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import UIKit

class CharactersViewController: UITableViewController {

    private var characters = [Character]()
    
    private let charactersProvider = CharactersProvider.create()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadCharacters()
    }

    private func loadCharacters() {
        charactersProvider.get() { [weak self] (characters, error) in
            DispatchQueue.main.async {
                guard error == nil else { return }
                
                self?.characters = characters
                self?.tableView.reloadData()
            }
        }
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "charactersCell", for: indexPath) as? CharacterTableViewCell {
            let character = characters[indexPath.row]
            cell.set(character: character)
            
            return cell
        }
        
        return UITableViewCell()
    }
}
