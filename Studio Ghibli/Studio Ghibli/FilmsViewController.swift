//
//  FilmsViewController.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import UIKit

class FilmsViewController: UITableViewController {

    private var films = [Film]()
    
    private let filmsProvider = FilmsProvider.create()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadFilms()
    }

    private func loadFilms() {
        filmsProvider.get { [weak self] (films, error) in
            DispatchQueue.main.async {
                guard error == nil else { return }
                
                self?.films = films
                self?.tableView.reloadData()
            }
        }
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "filmCell", for: indexPath) as? FilmTableViewCell {
            let film = films[indexPath.row]
            cell.set(film: film)
            
            return cell
        }

        return UITableViewCell()
    }
}
