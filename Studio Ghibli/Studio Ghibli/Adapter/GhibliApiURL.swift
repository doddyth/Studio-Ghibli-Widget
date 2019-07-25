//
//  GhibliApiURL.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import Foundation

struct GhibliApiURL {
    
    private static let host = "ghibliapi.herokuapp.com"
    
    struct Endpoint {
        let path: String
        let queryItems: [URLQueryItem]?
    }
    
    static func url(endpoint: Endpoint) -> URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = host
        components.path = "/\(endpoint.path)"
        components.queryItems = endpoint.queryItems
        return components.url
    }
}

extension GhibliApiURL.Endpoint {
    init(path: String) {
        self.init(path: path, queryItems: nil)
    }
}

