//
//  ApiURLSession.swift
//  Studio Ghibli
//
//  Created by Doddy Tri Hutomo on 25/07/19.
//  Copyright © 2019 Doddy Tri Hutomo. All rights reserved.
//

import Foundation

class ApiURLSession {
    func dataTask(request: URLRequest,
                  completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        dataTask?.cancel()
        dataTask = session.dataTask(with: request, completionHandler: completion)
        dataTask?.resume()
    }
    
    private let session: URLSession
    private var dataTask: URLSessionDataTask?
    
    init() {
        let configuration = URLSessionConfiguration.default
        configuration.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        session = URLSession(configuration: configuration)
    }
}
