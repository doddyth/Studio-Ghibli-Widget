//
//  FilmsProvider.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import Foundation

struct FilmsProvider {
    typealias Completion = ([Film], Error?) -> Void
    
    private let service: GetApi
    
    init(service: GetApi) {
        self.service = service
    }
    
    func get(_ completion: @escaping Completion) {
        service.data(type: .films) { (data, error) in
            guard error == nil else {
                completion([], error)
                return
            }
            
            if let data = data,
                let films = try? JSONDecoder().decode([Film].self, from: data) {
                completion(films, nil)
            } else {
                completion([], GhibliApiError.invalidData)
            }
        }
    }
}

extension FilmsProvider {
    static func create() -> FilmsProvider {
        return FilmsProvider(service: GetApi())
    }
}
