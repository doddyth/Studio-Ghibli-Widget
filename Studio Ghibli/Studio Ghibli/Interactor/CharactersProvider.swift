//
//  CharactersProvider.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import Foundation

struct CharactersProvider {
    typealias Completion = ([Character], Error?) -> Void
    
    private let service: GetApi
    
    init(service: GetApi) {
        self.service = service
    }
    
    func get(_ completion: @escaping Completion) {
        service.data(type: .people) { (data, error) in
            guard error == nil else {
                completion([], error)
                return
            }
            
            if let data = data,
                let characters = try? JSONDecoder().decode([Character].self, from: data) {
                completion(characters, nil)
            } else {
                completion([], GhibliApiError.invalidData)
            }
        }
    }
}

extension CharactersProvider {
    static func create() -> CharactersProvider {
        return CharactersProvider(service: GetApi())
    }
}
