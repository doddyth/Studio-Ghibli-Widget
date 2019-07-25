//
//  GhibliApiURLRequest.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import Foundation

struct GhibliApiURLRequest {
    private static let header = ["Content-Type": "application/json"]
    
    static func get(endpoint: GhibliApiURL.Endpoint) -> URLRequest? {
        guard let url = GhibliApiURL.url(endpoint: endpoint) else { return nil }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.allHTTPHeaderFields = header
        urlRequest.httpMethod = "GET"
        
        return urlRequest
    }
}
